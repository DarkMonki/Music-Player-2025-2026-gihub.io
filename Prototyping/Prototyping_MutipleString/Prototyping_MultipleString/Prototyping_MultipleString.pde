fullScreen(); //Landscape
//size(500, 100); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//
//Population
int numberOfDIVs = 4;
float[] stringDivX = new float[numberOfDIVs];
float[] stringDivY = new float[numberOfDIVs];
float[] stringDivWidth = new float[numberOfDIVs];
float[] stringDivHeight = new float[numberOfDIVs];
stringDivX[0] = appWidth*5.5/22.5;
stringDivY[0] = appHeight*8.25/12.5;
stringDivWidth[0] = appWidth*1.3/22.5;
stringDivHeight[0] = appHeight*0.6/12.5;
stringDivX[1] = appWidth*15.9/22.5;
stringDivY[1] = appHeight*8.25/12.5;
stringDivWidth[1] = appWidth*1.3/22.5;
stringDivHeight[1] = appHeight*0.6/12.5;
stringDivX[2] = appWidth*6.8/22.5;
stringDivY[2] = appHeight*6.9/12.5;
stringDivWidth[2] = appWidth*4.5/22.5;
stringDivHeight[2] = appHeight*1/12.5;
stringDivX[3] = appWidth*11.3/22.5;
stringDivY[3] = appHeight*6.9/12.5;
stringDivWidth[3] = appWidth*4.5/22.5;
stringDivHeight[3] = appHeight*1/12.5;
//
String[] text = new String[numberOfDIVs];
text[0] = "SongTime";
text[1] = "SongEnd";
text[2] = "Titlename";
text[3] = "Artistname";
//
float[] fontSize = new float[numberOfDIVs];
String[] font = new String[numberOfDIVs];
font[0] = "Corbel";
font[1] = "Corbel";
font[2] = "Corbel";
font[3] = "Corbel";
PFont[] drawFont = new PFont[numberOfDIVs];
//
float[] aspectRatio = new float[numberOfDIVs];
/* Font Data Structure Legend
 0: corbel
 1: corbel
 2: corbel
 3: corbel
*/
int denominator = 120;
int[] testedSize = new int[numberOfDIVs];
testedSize[0] = 100; 
testedSize[1] = 100;
testedSize[2] = 909; 
testedSize[3] = 909; 
for (int i=0; i<numberOfDIVs; i++) {
  aspectRatio[i] = float(testedSize[i]) / float(denominator);
  fontSize[i] = aspectRatio[i]*10;
  drawFont[i] = createFont(font[i], fontSize[i]);
} //End
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} //End For DIVs
//
//Drawing Text
color midnightpurpleInk = #1C0D2C;
color whiteInk = #FFFFFF; //Grey Scale is 0-255
color resetInk = whiteInk;
fill(midnightpurpleInk);
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
float constantDecrease = 0.99;
int iWhile=0;
for ( int i=0; i<3; i++ ) {
  textFont(drawFont[i], fontSize[i]); //textSize() required before text() or textWidth()
  //
  if ( textWidth( text[i] ) > stringDivWidth[i] ) {
    //Decrease text by *
    while ( textWidth( text[i] ) > stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] *= constantDecrease; //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } //
  } else {
    //Increase text by /
    while ( textWidth( text[i] ) < stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] /= constantDecrease; //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } //
  }
  float pixelDifference = stringDivWidth[i] - textWidth( text[i] );
  //println("\nFirst Var Check for:"+i, "\tIterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", pixelDifference, "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
  while ( pixelDifference < 1 ) {
    iWhile++;
    fontSize[i]--;
    textFont(drawFont[i], fontSize[i]);
    pixelDifference = stringDivWidth[i]-textWidth( text[i] );
  }
  //println("Second Print Check for:"+i, "\tIterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", pixelDifference, "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
} //End
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  textFont(drawFont[i], fontSize[i]);
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End of all
