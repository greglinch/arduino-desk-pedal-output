// INPUT INCREMNENTER
// By Greg Linch -- to measure the output of my desk pedals at work
// Adapted from Example 03A from "Getting Started with Ardunio" by Massimo Banzi

//#define LED 13 // the pin for the LED as feedback mechanism
#define BUTTON 7 // the input pin where the push button is connected

int val = 0; // will be used to store the state of the input pint

//int state = 0; // 0 = LED off while 1 = LED on

int revolutions = 0; // will be used to store the number of revolutions of the pedals

int prvState = LOW;

void setup() {
  //pinMode(LED, OUTPUT); // tell Arduino LED is an output
  //pinMode(BUTTON, INPUT); // and BUTTON is an input
  Serial.begin(9600); // opens up comm from Arduino to serial monitor
}

void loop() {
  val = digitalRead(BUTTON);
  
  if (val == HIGH) {
   //state = 1 - state;
     if (prvState == LOW){
       revolutions++;
       Serial.println(revolutions);
     }
   }

// Conditionals for LED as feedback mechanism
/*
 if (state == 1) {
   digitalWrite(LED, HIGH);   
 }
 else {
   digitalWrite(LED, LOW);
 }
*/
prvState = val; // save the current value to previous state so it knows
 
}
