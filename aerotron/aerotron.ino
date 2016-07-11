// Zrakotron firmware
// J.Kordić & T. Mamić for Mikrotron d.o.o.
// 5/2016

// important considerations

// operational limits of DHT11, and thus the whole system are 0-50oC, 20-80% RH
// outside these values, device readings are highly unreliable
// the device is tested to work at 20-30oC, 33% RH
// temperature compensation is present, but may require tweaking and pushing the device to its limits will not result in useful measurements

#include "SoftwareSerial.h"      // communication with esp8266
#include "EEPROM.h"              // calibration data
#include "math.h"

// measurement corrections for changing temperature and humidity
#include "DHT.h"
#define DHTPIN 2
#define DHTTYPE DHT11
#define SPIN 3

// dust sensor timekeeping and data
unsigned long int lastRead;
unsigned int lows, highs;
float ratio, Npart;

// power quality control - bad power levels directly affect sensor readings
#define PWRC A5

#define DEBUG true  // wifi debug flag

#define Y_lvls 1023 // ADC levels at normal operation
#define V_mol 24.45 // molar volume of ideal gas @ standard conditions

// sensor data - use as needed by sensor reading functions
const String sensors[]      ={"MQ7 - CO","MQ131 - O3","MQ135 - Benzen","MQ136 - H2S","MG811 - CO2"};      // sensor names to keep track of what's what
const int sensor_pins[]     ={A0,A1,A2,A3,A4};                                                            // signal pins
const double R_L[]          ={949,958,948,951};                                                           // comparing resistor value (measured from sensor boards, always ~950)
const double sens_eq[][2]   ={{-0.5424, 1.04696},{-0.5142,0.5055},{-0.2828,0.429},{-0.2828,0.429}};       // koef. a and b for log(rs/r0)=a*log(ppm)+b - sensor response function
const double sens_corr[][4] ={{1.45,1,0.86,0.12},{1.7,1.25,0.88,0.25},{1.7,1,0.9,0.09},{1.7,1,0.9,0.09}}; // temperature curve points at -10, 20 and 50 oC (approx. by 2 lin. functions) and variation between 33-80% RH approx. lin.
const double c_trans[]      ={2.3,0,4.4,4.41};                                                            // correction factors - due to different gas levels compared to datasheet calibration
const double mm[]           ={28.0101,48,78.11,34.08};                                                    // molar mass of measured gasses
double R_0[]                ={0,0,0,0};                                                                   // baseline resistances (to be calibrated or read from EEPROM)

SoftwareSerial esp8266(7,6);
DHT dht(DHTPIN, DHTTYPE);
float h,t,Vs;
int Vraw;
long unsigned int lastCall=0;

void setup(){
  setPins();
  startComm();
  Serial.println("Starting up...");
  delay(2000);                                                  // give some breathing room to esp and DHT
  initSettings();                                               // get calibration data from EEPROM or run calibration if some are missing
  for(int i=0;i<5;i++){                                         // dump what you found to serial for debugging purposes
    Serial.println(sensors[i]+" R0="+String(R_0[i]));
  }
  lows=0;
  highs=0;
  Serial.println("Startup complete.");
  Serial.println("MQ7raw,MQ7r,MQ7c,PPDc,PPDh,PPDl,MGraw,h,t,Vraw,Vs");
}

void loop(){
  if(millis()-lastCall>1000){                                          // serial loop every second
    //serverLoop();                                                      // server loop - contains 1s of blocking pause!! ToDo: schedule measurements so this doesn't affect them
    getCond();
    //loopDump();
    logDump();
    lastCall=millis();
  }
  if(millis()-lastRead>5){lastRead=millis();PPD42Step();}              // check PPD state every 5ms - lowtime is 10~90ms, so in theory, even the minimal drop will be caught as long as the rest of the loop step lasts shorter than 5ms
}
