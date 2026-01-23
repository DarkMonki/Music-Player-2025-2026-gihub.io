
//
void divPopulation() {
  quitDivX = appWidth * 9/10;
  quitDivY = appHeight * 0/10;
  quitDivWidth = appWidth * 1/10;
  quitDivHeight = appHeight * 1/10;
  playDivX = appWidth * 4/10;
  playDivY = appHeight * 4.5/10;
  playDivWidth = appWidth * 2/10;
  playDivHeight = appHeight * 1/10;
  playSymbolX1 = playDivX + playDivWidth * 1/4;
  playSymbolY1 = playDivY + playDivHeight * 1/4;
  playSymbolX2 = playSymbolX1 + playDivWidth * 1/2;
  playSymbolY2 = playDivY + playDivHeight * 1/2;
  playSymbolX3 = playSymbolX1;
  playSymbolY3 = playDivY + playDivHeight * 3/4;
  //
  stringDivX = appWidth*70/279;
  stringDivY = appHeight*22/216;
  stringDivWidth = appWidth*140/279;
  stringDivHeight = appHeight*22/216;
} //End DIV Population
//
void colourPopulation() {
  color black = 0; //Gray Scale, 256 bits
  color white = 255; 
  color grayScale = 256/2; 
  color gray = #B9B9B9; 
  //
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of original, not 1/4
  //println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator
  //
  color red = #CD0000;
  color darkblue = #0B165A; //human name for hexidecimal code
  color brown = #5D3501;
  color blue = #4A05F0; //Day Mode Ink
  color darkGray = grayScale;
  color ligthGray = gray;
  //Note: able to use a Ternary Operator but ineffiecient
  //println("Night Mode Boolean", nightMode);
  if ( nightMode == true ) {
    resetBackground = resetBackgroundNight;
    resetInk = resetInkNight;
    playColourBackground = darkGray;
    playColourSymbol = ligthGray;
    playColourBackgroundActivated = ligthGray;
    playColourSymbolActivated = darkGray;
    quitBackground = ligthGray;
    quitBackgroundActivated = red;
    quitButtonInk = darkGray;
    titleInk = darkGray;
  } else
  {
    //Previously the Day Colour Assignments
    resetBackground = resetBackgroundDay;
    resetInk = black;
    playColourBackground = darkblue;
    playColourSymbol = brown;
    playColourBackgroundActivated = brown;
    playColourSymbolActivated = blue;
    quitBackground = white;
    quitBackgroundActivated = red;
    quitButtonInk = black;
    titleInk = blue;
  } //End Night Mode Colors
  //
} //End Colour Population
//
// End Subprogram Population
