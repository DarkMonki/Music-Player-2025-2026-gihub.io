
//
//Library - Minim
//Reminder: activate the Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() {
  //Display
  size(700, 500); //width //height
  //fullScreen(); //displayWidth //displayHeight
  int appWidth = width;
  int appHeight = height;
  //
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../../";
  String musicFolder = "Music/";
  String soundEffectsFolder = "Sound Effects/";
  String songFolder = "Songs/";
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "Blue Moon";
  songName[1] = "City Lights";
  songName[2] = "Golden Hour";
  //
  String soundEffect1 = "Assorted Computer Sounds";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder + songFolder;
  String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder;
  String file;
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playList[ currentSong ] = minim.loadFile( file );
    currentSong++;
  } //End File Loading
  currentSong=0;
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    //
    if ( playList[i]==null || soundEffects[currentSong]==null) {
      //See FILE or minim.loadFile
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      printArray(soundEffects);
      /* println("Music Pathway", musicDirectory);
       println("Full Music File Pathway", file);
       */
    } //End ERROR Check Music and Sound Effect Variables
  } //End File Loading
  //
} //End setup
//
void draw() {
} //End draw
//
void mousePressed() {
} //End Mouse Pressed
//
void keyPressed() {
  /* Simple Play
   playList[currentSong].play();
   currentSong++;
   */
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
  //
  if ( key=='O' || key=='o' ) {
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
      playList[currentSong].pause();
    } else {
      playList[currentSong].rewind();
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1);
  if ( key=='K' || key=='k' ) playList[currentSong].loop();
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 );
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 );
  if ( key=='W' || key=='w' ) {
    //
    if ( playList[currentSong].isMuted() ) {
      //
      playList[currentSong].unmute();
    } else {
      //
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit();
  if ( key=='Q' || key=='q' ) exit();
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
      if ( currentSong==numberOfSongs-3 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='B' || key=='b' ) ; // Previous, Back //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
  //
} //End Key Pressed
//
//End MAIN Program
