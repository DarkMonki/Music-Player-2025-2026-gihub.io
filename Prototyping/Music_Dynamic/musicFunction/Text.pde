
//Global Variables
String songTitle;
float fontSize;
PFont titleFont;
//
void easyTextQuitButton() {
  //
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
} //End Easy Text
//
void textSetup() {
  //
 
  fontSize = appHeight;
  String harrington = "Harrington";
  titleFont = createFont(harrington, fontSize);
  //
  float fontSizeHarrington = 83.0;
  float harringtonAspectRatio = fontSizeHarrington / stringDivHeight;
  fontSize = stringDivHeight*harringtonAspectRatio;
  //
} //End Text Setup
//
void textdraw() {
  fill(purpleInk);
  textAlign (CENTER, CENTER);
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, fontSize);
  //
  float constantDecrease = 0.99;
int iWhile=0;
while ( textWidth( playListMetaData[currentSong].title() ) > stringDivWidth ) {
  iWhile++;
  //
  fontSize *= constantDecrease;
  textFont(titleFont, fontSize);
}
//println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
text( playListMetaData[currentSong].title(), stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
} //End Text Draw
//
//End Subprogram Text
