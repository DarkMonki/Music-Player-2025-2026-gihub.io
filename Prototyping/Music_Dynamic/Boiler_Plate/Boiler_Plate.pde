/* Program Documentation & Notes
 -Largest Square Display Possible on any DISPLAY
 */
//Library - Minim
//
//Global Variables
//
void settings() {
  println(displayWidth, displayHeight);
  int shorterSide = ( displayWidth > displayHeight) ? displayHeight : displayWidth ;
  shorterSide *= 0.9; //90%
  size(shorterSide, shorterSide);
  println("Display Questions", displayWidth, displayHeight, shorterSide);
  println("CANVAS Size Key Variables for setup()", width, height);
} //End Settings
//
void setup() {
  /* ERROR
  println(displayWidth, displayHeight);
  int shorterSide = ( displayWidth > displayHeight) ? displayHeight : displayWidth ;
  size(shorterSide, shorterSide);
  */
  //fullScreen(); //displayWidth, displayHeight
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
