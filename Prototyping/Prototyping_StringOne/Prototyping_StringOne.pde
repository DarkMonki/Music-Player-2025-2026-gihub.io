/* String
 */
//
//Display
fullScreen();
//size(500, 100);
int appWidth = displayWidth;
int appHeight = displayHeight;
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float stringDivX = appWidth*1/4;
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10;
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
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
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
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
fill(resetInk);
//
//End
