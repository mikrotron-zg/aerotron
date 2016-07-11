boolean read_R_0(){                        // get resistances from eeprom
  int s=sizeof(double);
  for(int i=0;i<4;i++){
    EEPROM.get(i*s,R_0[i]);
    if(isnan(R_0[i]))return false;
  }
  return true;
}

void save_R_0(){                           // put resistances to eeprom
  noInterrupts();
  int s=sizeof(double);
  for(int i=0;i<4;i++){
    EEPROM.put(i*s,R_0[i]);
  }
  interrupts();
}
