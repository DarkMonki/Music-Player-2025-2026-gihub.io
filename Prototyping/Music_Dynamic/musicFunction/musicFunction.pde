
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
//All Global Variables execute first ... A global Variable is a Global Variable

  //void settings() {
  //println(displayWidth, displayHeight);
  //int shorterSide = ( displayWidth > displayHeight ) ? displayHeight : displayWidth ; //Ternary Operator
  //shorterSide *= 0.9; //90%, WINDOW Frame
  //size(shorterSide, shorterSide); //ERROR IllegalStateException: cannot use a var in size()
  //println("Display Questions", displayWidth, displayHeight, shorterSide);
  //println("CANVAS Size Key Variables for setup()", width, height);
  //}End settings

void setup() {
  //Display CANVAS
  //size(); //width //height
  fullScreen(); //displayWidth //displayHeight
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  divPopulation();
  DIVs();
  musicButtonShapes();
  nightMode=false;
  colourPopulation();
  musicSetup();
  textSetup();
  testMetaData();
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //println (playButton);
  hoverOver_draw();
  //
  saveSongTitle();
  //drawText();
  //
} //End draw
//
void mousePressed() {
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButton();
  }
} //End Mouse Pressed
//
void keyPressed() {
  //
  if (key=='Q' || key=='q') { 
    quitButton();  //See Below
  } //Quit Button
  if (key=='D' || key=='d') {
    if ( nightMode == false ) {
      nightMode = true;
    } else {
      nightMode = false;
    }
    colourPopulation();
  } //Night Mode
  //
  //
  /* Key Board Short Cuts ... learning what the Music Buttons could be
   Note: CAP Lock with ||
   if ( key==? || key==? ) ; //'' only
   -
   if ( key==CODED || keyCode==SpecialKey ) ; //Special Keys abriviated CAPS
   -
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0);
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' | key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    if ( playList[currentSong].isMuted() ) {
      //
      playList[currentSong].unmute();
    } else {
      //
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  //if ( key=='Q' || key=='q' ) exit(); //Depreciated, already coded, See Buttons // QUIT
  //
  if ( key=='N' || key=='n' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
    }
  }
  //if ( key=='B' || key=='b' ) ; // Previous, Back //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs));
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
  //
} //End Key Pressed
//
//End MAIN Program
