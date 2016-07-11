double getR_s(int ID){                      // calculate variable resistance of MQ sensor from its analog pin value
  int y=analogRead(sensor_pins[ID]);
  return (double)R_L[ID]*(Y_lvls-y)/y;
}

void getCond(){                             // get temperature and humidity for correction ToDo: LP filter the data to make changes less erratic
  h=dht.readHumidity();
  t=dht.readTemperature(false);
  Vraw=analogRead(PWRC);
  Vs=5.0*Vraw/1024;
  //h=33;
  //t=25;
  lastCall=millis();
}

void getR_0(int measures,int interval){     // get multiple measurements of variable resistance for calibration
  for(int j=0;j<5;j++){
    R_0[j]=0;
  }
  for(int i=0;i<measures;i++){
    for(int j=0;j<5;j++){
      R_0[j]+=getR_s(j);
    }
    delay(interval);
  }
  for(int j=0;j<5;j++){
    R_0[j]/=measures;
  }
}

void PPD42Step(){                            // count uptime/downtime of PPD
  if(digitalRead(SPIN)){highs++;}else{lows++;}
}

double getCorr(int ID){                      // calculate required correction of MQ sensors for different conditions
  double k=sens_corr[ID][3]/(33-85);
  double l=33*k;
  double hcorr=h*k-l;
  k=(sens_corr[ID][1+(t>25)]-sens_corr[ID][t>25])/30;
  l=20*k-sens_corr[ID][1];
  double tcorr=t*k-l-1;
  return tcorr+hcorr;
}
