#include <WiFi.h>
#include <WiFiUdp.h>
#include <ArduinoOTA.h>
#include<Arduino.h>
//    Can be client or even host   //
#ifndef STASSID
#define STASSID "c"  // Replace with your network credentials
#define STAPSK  "9390467299"
#endif

const char* ssid = STASSID;
const char* password = STAPSK;


void OTAsetup() {
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  while (WiFi.waitForConnectResult() != WL_CONNECTED) {
    delay(5000);
    ESP.restart();
  }
  ArduinoOTA.begin();
}

void OTAloop() {
  ArduinoOTA.handle();
}
int A=0,B=0,C=0,D=0;
int F;
// the setup function runs once when you press reset or power the board
void setup() {
	OTAsetup();
    pinMode(4, INPUT); 
    pinMode(5, INPUT);
    pinMode(6, INPUT);
    pinMode(7, INPUT);
    pinMode(21,OUTPUT);
}

// the loop function runs over and over again forever
void loop ()
{
	OTAloop();
A = digitalRead(4);//LSB
B = digitalRead(5);
C = digitalRead(6);
D = digitalRead(7);//MSB
F =((!A&&B&&D)||(!A&&B&&C)||(!D&&!A&&C));
digitalWrite(21,F);
}

