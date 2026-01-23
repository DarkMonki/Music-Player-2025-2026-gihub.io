
//
void quitButton() {
  noLoop(); 
  exit(); 
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
  quitDIV();
  playDIV();
  titleDIV();
} //End DIVs
//
void quitDIV() {
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
} // End Quit Button DIV
//
void playDIV() {
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
} // End Plauy Button DIV
//
void titleDIV() {
  rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
} //End Title DIV
//
void playButtonSymbol() {
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
} //End Play Button Symbol
//
void musicButtonShapes() {
  playButtonSymbol();
} // End Msuic Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  playDIV();
  fill(playColourSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  playDIV();
  fill(playColourSymbol);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Ready
//
void hoverOver_draw() {
  //Button HoverOver
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    if ( playButton == false ) playButtonActive();
  } else {
    //
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }//End Play Button Hover Over
  //
} //End Hoverover, draw()
//
//End Buttons Subprogram
