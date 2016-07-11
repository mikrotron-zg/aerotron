void startWiFi(){                                                                    // init esp8266
  sendData("AT+RST\r\n",2000,DEBUG);
  sendData("AT+CWMODE=2\r\n",2000,DEBUG);
  sendData("AT+CIFSR\r\n",1000,DEBUG);
  sendData("AT+CIPMUX=1\r\n",1000,DEBUG);
  sendData("AT+CIPSERVER=1,80\r\n",1000,DEBUG);
}

void serverLoop(){                                                                   // show readings on demand
  if(esp8266.available()){                                                           // if there is data on esp serial
    if(esp8266.find("+IPD,")){                                                       // find +IPD,
      delay(1000);                                                                   // wait for esp to calm down
      int connectionID = esp8266.read()-48;                                          // get client id
      // deliver HTML
      sendPiece("<!DOCTYPE html>",connectionID);
      sendPiece("<h2>Zrakotron mjerenja</h2>",connectionID);
      sendPiece("<h3>"+getCOMQ7()+"<br>",connectionID);
      sendPiece(getPPD42()+"<br>",connectionID);
      sendPiece("@ "+String(t)+"oC & "+String(h)+"%RH </h3>",connectionID);
      // close connection
      String closeCommand = "AT+CIPCLOSE="; 
      closeCommand+=connectionID;
      closeCommand+="\r\n";   
      sendData(closeCommand,3000,DEBUG);
    }
  }
}

void sendPiece(String piece,int conID){  // AT magic to send a string - wrap
  String cipSend = "AT+CIPSEND=";
  cipSend += conID;
  cipSend += ",";
  cipSend +=piece.length();
  cipSend +="\r\n";
  sendData(cipSend,200,DEBUG);
  sendData(piece,200,DEBUG);
}

String sendData(String command, const int timeout, boolean debug){    // AT magic to send a string - dirty work
  String response = "";  
  esp8266.print(command);                                             // sending string string
  long int time = millis();
  while((time+timeout)>millis()){                                     // until timeout
    while(esp8266.available()){                                       // as long as esp has data
      char c = esp8266.read();                                        // read and cat to response
      response+=c;
    }  
  }
  if(debug){                                                          // if debug, show response
    Serial.print(response);
  }
  return response;
}
