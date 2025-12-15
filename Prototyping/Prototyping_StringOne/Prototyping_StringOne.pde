//Display
fullScreen();
//size(500, 100);
int appWidth = displayWidth;
int appHeight = displayHeight;
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float[] stringDivWidth = new float(3);
float stringDivX1 = appWidth*1/4;
float stringDivY1 = appHeight*1/10;
stringDivWidth[1] = appWidth*1/2;
float stringDivHeight1 = appHeight*1/10;
float stringDivX2 = stringDivX1;
float stringDivY2 = appHeight*3/10;
stringDivWidth[2] = appWidth*1/4;
float stringDivHeight2 = stringDivHeight1;
float stringDivX3 = stringDivX1;
float stringDivY3 = appHeight*5/10;
stringDivWidth[3] = appWidth*5/8;
float stringDivHeight3 = stringDivHeight1;
//
rect( stringDivX1, stringDivY1, stringDivWidth1, stringDivHeight1 );
rect( stringDivX2, stringDivY2, stringDivWidth2, stringDivHeight2 );
rect( stringDivX3, stringDivY3, stringDivWidth3, stringDivHeight3 );
//
String title = "Sunset";
//
 /*
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
//
float fontSize = appHeight;
PFont titleFont;
String impact = "Impact";
titleFont = createFont(impact, fontSize); 
//
println(fontSize, impact, titleFont);
println("font Size:", fontSize);
//
float impactAspectRatio = fontSize / stringDivHeight;
fontSize = stringDivHeight*impactAspectRatio;
println("Impact Aspect Ratio:", impactAspectRatio);
println();
//
rect(stringDivX, stringDivY, stringDivWidth, stringDivHeight);
fontSize = 80.0;
//
color blackInk = #000000;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(blackInk);
//Grey Scale 0-255
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
textFont(titleFont, fontSize);
float constarantDecrease = 0.99;
//
for ( 1=1; 1<=3; 1++ ) {
while ( textWidth( title ) > stringDivWidth ) { 
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constarantDecrease; //fontSize = fontSize*0.99;
  textFont( titleFont, fontSize );
}
//
text(title, stringDivX, stringDivY, stringDivWidth, stringDivHeight);
fill(resetInk);
//
//End
