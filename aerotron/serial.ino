void loopDump(){                  // for checking
  Serial.println("-----------");
  Serial.println(getCOMQ7());
  Serial.println(getPPD42());
  Serial.println(getMG811());
  Serial.println("-----------");
  Serial.println("@ "+String(t)+"oC & "+String(h)+"%RH");
  Serial.println("-----------");
  Serial.println(String(getCorr(0)));
}

void logDump(){                   // for logging
  Serial.println(compactMQ7()+","+compactPPD42()+","+compactMG811()+","+String(h)+","+String(t)+","+String(Vraw)+","+String(Vs));
}
