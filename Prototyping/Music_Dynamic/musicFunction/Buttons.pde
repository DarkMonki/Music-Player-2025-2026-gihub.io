
//
void quitButton() {
  noLoop();
  exit();
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
} //End DIVs
//
void musicButtonShapes() {
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
} // End Msuic Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  //
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  //
  fill(resetBackground);
  fill(quitButtonInk);
  //
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
  //
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  //
  rect(quitDivX, quitDivY, quitDivWidth, quitDivHeight);
  //
  fill(resetBackground);
  fill(quitButtonInk);
  //
  text("X", quitDivX+quitDivWidth*1/2, quitDivY+quitDivHeight*3/5);
  //
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  //
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  //
  fill(playColourSymbolActivated);
  //
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  //
  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  //
  rect(playDivX, playDivY, playDivWidth, playDivHeight);
  //
  fill(playColourSymbol);
  //
  triangle(playSymbolX1, playSymbolY1, playSymbolX2, playSymbolY2, playSymbolX3, playSymbolY3);
  //
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
