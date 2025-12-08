/* String
 */
//
//Display
fullScreen(); //Landscape
//size(500, 100); //Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float stringDivX = appWidth*1/4;
float stringDivY = appHeight*1/10;
float stringDivWidth = appWidth*1/2;
float stringDivHeight = appHeight*1/10;
//
//Strings, Text, Literal
String title = "Wahoo!";
//
/*Fonts from OS
 println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
 String[] fontList = PFont.list(); //To list all fonts available on system
 printArray(fontList); //For listing all possible fonts to choose, then createFont
 */
//
int fontSize = 25; 
PFont titleFont;
String arial bold = "Arial Bold";
titleFont = createFont (arial bold, fontSize);
//
rect( stringDivX, stringDivY, stringDivWidth, stringDivHeight );
//
text( title, stringDivX, stringDivY, stringDivWidth, stringDivHeight );
