fullScreen(); //Landscape
//size(500, 100); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//
//Population
int numberOfDIVs = 3;
float[] stringDivX = new float[numberOfDIVs];
float[] stringDivY = new float[numberOfDIVs];
float[] stringDivWidth = new float[numberOfDIVs];
float[] stringDivHeight = new float[numberOfDIVs];
stringDivX[0] = appWidth*1/4;
stringDivY[0] = appHeight*1/10;
stringDivWidth[0] = appWidth*1/2;
stringDivHeight[0] = appHeight*1/10;
stringDivX[1] = stringDivX[0];
stringDivY[1] = appHeight*3/10;
stringDivWidth[1] = appWidth*1/4;
stringDivHeight[1] = stringDivHeight[0];
stringDivX[2] = stringDivX[0];
stringDivY[2] = appHeight*5/10;
stringDivWidth[2] = appWidth*5/8;
stringDivHeight[2] = stringDivHeight[0];
//
//Strings, Text, Literal
String[] text = new String[numberOfDIVs];
text[0] = "I";
text[1] = "Hate";
text[2] = "Banana";
//
float[] fontSize = new float[numberOfDIVs];
String[] font = new String[numberOfDIVs];
font[0] = "Impact";
font[1] = "Impact";
font[2] = "Impact";
PFont[] drawFont = new PFont[numberOfDIVs];
//
float[] aspectRatio = new float[numberOfDIVs];
/* Font Data Structure Legend
 0: impact
 1: impact
 2: impact
 */
int denominator = 120;
int[] testedSize = new int[numberOfDIVs];
testedSize[0] = 129; 
testedSize[1] = 131; 
testedSize[2] = 141; 
for (int i=0; i<numberOfDIVs; i++) {
  aspectRatio[i] = float(testedSize[i]) / float(denominator);
  fontSize[i] = aspectRatio[i]*10; 
  drawFont[i] = createFont(font[i], fontSize[i]);
} //End Reading drawFont[]
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
} //End FOR DIVs
//
//Drawing Text
color blackInk = #000000; 
color whiteInk = #FFFFFF; //Grey Scale is 0-255
color resetInk = whiteInk;
fill(blackInk); 
textAlign (CENTER, CENTER); 
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
float constantDecrease = 0.99;
int iWhile=0; 
for ( int i=0; i<3; i++ ) {
  textFont(drawFont[i], fontSize[i]); //textSize() required before text() or textWidth()
  //Required * / Choice for Aspect Ratio, similar to Ternary Operator
  if ( textWidth( text[i] ) > stringDivWidth[i] ) {
    //Decrease text by *
    while ( textWidth( text[i] ) > stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] *= constantDecrease; //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } //End WHILE Error Check Text-wrap
  } else {
    //Increase text by /
    while ( textWidth( text[i] ) < stringDivWidth[i] ) {
      iWhile++;
      //ERROR: infinite loop, requires exit() & println()
      fontSize[i] /= constantDecrease; //fontSize = fontSize*0.99;
      textFont(drawFont[i], fontSize[i]);
    } //End WHILE Error Check Text-wrap
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
}
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  textFont(drawFont[i], fontSize[i]);
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End
