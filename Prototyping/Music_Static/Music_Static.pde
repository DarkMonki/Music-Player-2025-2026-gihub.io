
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Varaibles
Minim minim; //initates entire class
int numberOfSongs = 3; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
//Display
size(700, 500); //width //height
//fullScreen(); //displayWidth //displayHeight
int appWidth = width; //Best Practice
int appHeight = height;
//
//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "../../";
String musicFolder = "Music/";
String soundEffectsFolder = "Sound Effects/";
String songsFolder = "Songs/";
String songName1 = "Blue Moon";
String soundEffect1 = "Assorted Computer Sounds";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder + songsFolder;
String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder;
String file = musicDirectory + songName1 + fileExtension_mp3;
playList[ currentSong ] = minim.loadFile( file );
file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile( file );
//
//ERROR Check Music and Sound Effect Variables
//Thrown by commenting out FILE, playList[] or soundEffects[]
if ( playList[currentSong]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
  //See FILE or minim.loadFile
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
  println("Music Pathway", musicDirectory);
  println("Full Music File Pathway", file);
  */
}
//
//End Main PRogram
