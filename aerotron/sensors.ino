String getCOMQ7(){
  double R_s=getR_s(0);
  String ret="CO conc: ";
  double ratio=R_s/R_0[0]+getCorr(0);
  ret+=String(ratio2ppm(0,ratio))+"ppm | ";
  ret+=String(ratio2mgm3(0,ratio))+"mg/m^3 | ";
  ret+="R: "+String(R_s);
  return ret;
}

String compactMQ7(){
  double R_s=getR_s(0);
  double ratio=R_s/R_0[0]+getCorr(0);
  String ret=String(analogRead(sensor_pins[0]))+","+String(R_s)+","+String(ratio2mgm3(0,ratio));
  return ret;
}

String getO3MQ131(){
  double R_s=getR_s(1);
  String ret="O3 conc: ";
  double ratio=R_0[0]/R_s+getCorr(1);
  ret+=String(ratio2ppm(1,ratio))+"ppb | ";
  ret+=String(ratio2mgm3(1,ratio))+"ug/m^3 | ";
  ret+="R: "+String(R_s);
  return ret;
}

String getPPD42(){
  ratio=(float)lows/(lows+highs)*100;
  Npart=ratio/9.2;
  //Npart=1.1*pow(ratio,3)-3.8*pow(ratio,2)+520*ratio+0.62;
  //Npart=(float)(((Npart*0.0283168)/100) * ((0.08205*26)/0.01))/1000;
  String ret="PPD42 lows: "+String(lows)+" | ";
  ret+="reads: "+String(lows+highs)+" | ";
  ret+=String(ratio)+"% | ";
  ret+="conc: "+String(Npart*1000)+"ug/m^3";
  if(lows+highs>60000){lows=0;highs=0;}
  return ret;
}

String compactPPD42(){
  ratio=(float)lows/(lows+highs)*100;
  Npart=ratio/9.2;
  String ret=String(Npart*1000)+","+String(highs)+","+String(lows);
  if(lows+highs>60000){lows=0;highs=0;}
  return ret;
}

String getC6H6MQ135(){
  double R_s=getR_s(2);
  String ret="C6H6 conc: ";
  double ratio=R_s/R_0[0]+getCorr(2);
  ret+=String(ratio2ppm(2,ratio)*1000)+"ppb | ";
  ret+=String(ratio2mgm3(2,ratio)*1000)+"ug/m^3 | ";
  ret+="R: "+String(R_s);
  return ret;
}

String getH2SMQ136(){
  double R_s=getR_s(3);
  String ret="H2S conc: ";
  double ratio=R_s/R_0[0]+getCorr(3);
  ret+=String(ratio2ppm(3,ratio)*1000)+"ppb | ";
  ret+=String(ratio2mgm3(3,ratio)*1000)+"ug/m^3 | ";
  ret+="R: "+String(R_s);
  return ret;
}

String getMG811(){
  return "raw data: "+String(analogRead(sensor_pins[4]));
}

String compactMG811(){
  return String(analogRead(sensor_pins[4]));
}
