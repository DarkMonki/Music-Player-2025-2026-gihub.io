//Display
fullScreen(); //Landscape
//size(500, 100); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("CHOICES", "\tFull Screen:", displayWidth, displayHeight, "\tCurrent CANVAS:", width, height); //Comma Concatenation with Character Escape
//println("\nDisplay VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight); //Comma, Plus Concatenation with Character Escape
//
//Population
float stringDivX = appWidth*1/4;
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10;
//
String title = "I hate Banana";
//
float fontSize = appHeight;
PFont titleFont;
String corbel = "Corbel";
//
titleFont = createFont(corbel, fontSize);
//
//println("Font Size:", fontSize, "\tFont Spelling:", corbel, "\tFont Variable Confirmation:", titleFont); //Inspect PFont-type Varaible for Harddrive Address v value
//
float fontSizeCorbel = 80.0;
float divHeightCorbel = stringDivHeight;
float corbelAspectRatio = fontSizeCorbel / divHeightCorbel;
fontSize = stringDivHeight*corbelAspectRatio;
//println("Corbel Aspect Ratio:", corbelAspectRatio, "@ Font Size:", fontSize);
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
//Must be before text()
color blackInk = #000000;
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(blackInk);
//Grey Scale 0-255
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
textFont(titleFont, fontSize);

float constantDecrease = 0.99;
int iWhile=0;
while ( textWidth( title ) > stringDivWidth ) {
  iWhile++;
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constantDecrease;//fontSize = fontSize*0.99;
  textFont(titleFont, fontSize);
}
println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringDivWidth-textWidth( title ), "\tUsing", constantDecrease*100+"%" );
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End of All
