// INPUT INCREMNENTER
// By Greg Linch -- to measure the output of my desk pedals at work
// Adapted from Example 03A from "Getting Started with Ardunio" by Massimo Banzi

#define BUTTON 7 // the input pin where the push button is connected

int val = 0; // will be used to store the state of the input pint

int revolutions = 0; // will be used to store the number of revolutions of the pedals

int prvState = LOW;

void setup() {
  Serial.begin(9600); // opens up comm from Arduino to serial monitor
}

void loop() {
  val = digitalRead(BUTTON);
  
  if (val == HIGH) {
     if (prvState == LOW){
       revolutions++;
       Serial.println(revolutions);
     }
   }
   
prvState = val; // save the current value to previous state so it knows
 
}
