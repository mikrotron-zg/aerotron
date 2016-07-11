void setPins(){
  // analog pins
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  pinMode(A3,INPUT);
  pinMode(A4,INPUT);
  pinMode(PWRC,INPUT);
  // DHT digital
  pinMode(DHTPIN,INPUT_PULLUP);
  // PPD42 digital
  pinMode(SPIN,INPUT);
  // power shield control, HIGH=sensor power shutdown
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);
}

void startComm(){
  Serial.begin(9600);
  esp8266.begin(115200);
  //startWiFi();
  dht.begin();
}

void initSettings(){
  getCond();                                                    // read DHT
  if(!read_R_0()){calibrate();delay(500);read_R_0();}           // try to get calibration data - if unable to, calibrate thyself
}

void calibrate(){
  Serial.println("Calibration started.");
  Serial.println("Heat-up time 3min...");
  for(int i=0;i<30;i++){                                        // waiting for sensors to heat up 30*6s=180s=3min
    delay(6000);
    Serial.print(".");
  }
  Serial.println("Heat-up complete, measuring...");
  getR_0(60,1000);                                               // starting calibration, 60 readings a second apart - 1min of measurement
  save_R_0();                                                    // save results
  Serial.println("Calibration complete.");
}
