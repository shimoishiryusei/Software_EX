#include "Servo.h"
#include "MsTimer2.h"

Servo myservo;
void brind(){
   if(analogRead(A0)<450){
      myservo.write(0); 
  }else if(analogRead(A0)>510){
      myservo.write(180);
  }
}

void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT);
  pinMode(13, OUTPUT);
  
  attachInterrupt(0,interrupt,FALLING);
  
  myservo.attach(10);
  MsTimer2::set(100, brind);
  MsTimer2::start();
}

void loop() {
  digitalWrite(13, HIGH);  
  delay(1000);  
  digitalWrite(13, LOW);
  delay(1000);               
}

void interrupt(){
  Serial.println(analogRead(A0));
}
