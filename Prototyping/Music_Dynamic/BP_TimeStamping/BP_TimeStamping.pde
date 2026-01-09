/* Time Stamping, Program efficiency
 
 */
//
//Library - Minim
//
//Global Variables
int timerStart, currentTime;
//
void setup() {
  int timerStart = millis();
  println("Beginning", timerStart);
  println("End Setup", currentTime - timerStart);
} //End setup
//
void draw() {
  //println("Draw", timerStart);
  noLoop();
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
