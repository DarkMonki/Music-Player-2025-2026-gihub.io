//
//Display
//fullScreen(); //Landscape
size(500, 100); //Portrait
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\theight:\t\t"+height);
//
//Population
float imageDivX = appWidth*1/8;
float imageDivY = appHeight*1/10;
float imageDivWidth = appWidth*3/4;
float imageDivHeight = appHeight*4/5; // 4/5
//
int numberOfImages = 3;
int i = 2;
/* Index Legend for Images
 i=0 // FullMoon
 i=1 // Sunset
 i=2 // NewYork
 */
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Images/";
String[] fileName = new String[numberOfImages];
fileName[0] = "FullMoon";
fileName[1] = "Sunset";
fileName[2] = "NewYork";
String[] fileExtension = new String[numberOfImages];
fileExtension[0] = ".jpg";
fileExtension[1] = ".jpg";
fileExtension[2] = ".jpg";
String[] imagePathway = new String[numberOfImages];
imagePathway[i] = upArrow + folder + fileName[i] + fileExtension[i];
//println(imagePathway[i]);
//
PImage[] image = new PImage[numberOfImages];
image[i] = loadImage( imagePathway[i] );
//
PImage errorImage = loadImage( "errorimage.png" );
//Error image without need for pathway
//Error image allows image() to be completed, notifying user of error
if ( image[i] == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image[i] = errorImage;
  exit();
}
int[] imageWidth = new int[numberOfImages];
int[] imageHeight = new int[numberOfImages];
imageWidth[0] = 1200;
imageHeight[0] = 630;
imageWidth[1] = 500;
imageHeight[1] = 331;
imageWidth[2] = 900;
imageHeight[2] = 599;
//Aspect Ratio
//
float imageAspectRatio_GreaterOne = ( imageWidth[i] >= imageHeight[i] ) ? float(imageWidth[i])/float(imageHeight[i]) : float(imageHeight[i])/float(imageWidth[i]) ;
//
//println("Testing for Decimals, formula unsing ints:", imageWidth[i]/imageHeight[i]);
println("After casting added, Aspect Ratio >1:", imageAspectRatio_GreaterOne);
//Algorithm Decisions (choice)
//
float[] imageWidthAdjusted = new float[numberOfImages];
float[] imageHeightAdjusted = new float[numberOfImages];
imageWidthAdjusted[i] = imageDivWidth;
imageHeightAdjusted[i] = ( imageWidth[i] >= imageDivWidth ) ? imageWidthAdjusted[i]/imageAspectRatio_GreaterOne : imageWidthAdjusted[i]*imageAspectRatio_GreaterOne ;
//
if ( imageHeightAdjusted[i] > imageDivHeight ) {
  //println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0;
  //** WHILE Loops can run infinitely with an error if not controlled
  while ( imageHeightAdjusted[i]>imageDivHeight ) {
    println("Iteration of Percent WHILE Loop", indexWhile++);
    if ( indexWhile < 10000 ) {
      //Checking Image Size, below
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
      exit();
      imageHeightAdjusted[i]=imageDivHeight;
    } //End Check Infinite loop
    imageWidthAdjusted[i] *= 0.99; // -= 1
    imageHeightAdjusted[i] = imageWidthAdjusted[i]/imageAspectRatio_GreaterOne;
    println("Inspection of percent decrase:", imageWidthAdjusted[i], imageHeightAdjusted[i], imageDivHeight);
  } //End WHILE
  //
} //END IF
//
//DIV
rect( imageDivX, imageDivY, imageDivWidth, imageDivHeight );
//
//image( image1, imageDivX, imageDivY, imageDivWidth, imageDivHeight );
image( image[i], imageDivX, imageDivY, imageWidthAdjusted[i], imageHeightAdjusted[i] );
//
//End Program
