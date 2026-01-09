/* Time Stamping, Program efficiency
 - uses millis()
 - noLoop() affects exit() in draw()
 */
//
//Library - Minim
//
//Global Variables 
int timerStart, currentTime, endSetup, drawBeginning, drawEnd;
//
void setup() {
  timerStart = millis();
  println("Beginning", timerStart);
  //Code for Setup()
  endSetup = millis();
  println("End Setup", endSetup);
} //End setup
//
void draw() {
  drawBeginning = millis();
  println("Draw Beginning", drawBeginning);
  noLoop();
  drawEnd = millis();
  println("Draw End 1:", drawEnd);
  exit();
  drawEnd = millis();
  println("Draw End 2:", drawEnd);
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
