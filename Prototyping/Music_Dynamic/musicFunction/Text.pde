
//
void drawText() {
  textdraw();
  songTitle();
  //
} // End Draw Text
//
//
void easyTextQuitButton() {
  //
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*1/2); 
} //End Easy Text
//
void textSetup() {
  /*
   println("Start of Console");
   String[] fontList = PFont.list();
   printArray(fontList);
  */
  fontSize = appHeight;
  fontSize = stringDivHeight;
  String corbel = "Corbel";
  titleFont = createFont(corbel, fontSize);
  //
  float fontSizeHarrington = 83.0;
  float harringtonAspectRatio = fontSizeCorbel / stringDivHeight;
  fontSize = stringDivHeight*corbelAspectRatio;
  //
} //End Text Setup
//
void textdraw() {
  //
  textFont(titleFont, fontSize);
  float constantDecrease = 0.99;
  int iWhile=0;
  while ( textWidth( playListMetaData[currentSong].title() ) > stringDivWidth ) {
    iWhile++;
    //
    fontSize *= constantDecrease;
    textFont(titleFont, fontSize);
  }
  //println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( playListMetaData[currentSong].title() ), "\tUsing", constantDecrease*100+"%" );
} //End Text Draw
//
void songTitle() {
  textAlign (CENTER, CENTER);
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  fill(titleInk);
  text( songTitle, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
  fill(resetInk);
} //End Song Title
//
//End Subprogram Text
