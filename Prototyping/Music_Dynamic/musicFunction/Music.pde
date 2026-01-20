
//
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "../../../";
String musicFolder = "Music/";
String soundEffectsFolder = "Sound Effects/";
String songFolder = "Songs/";
//
String[] songName songName = new String[numberOfSongs];
songName[0] = "Blue Moon";
songName[1] = "City Lights";
songName[2] = "Golden Hour";
//
String soundEffect1 = "Assorted Computer Sounds";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder + songFolder;
String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder;
String file = musicDirectory + songName1 + fileExtension_mp3;
//
for ( int i=0; i<numberOfSongs; i++ ) {
  file = musicDirectory + songName1 + fileExtention_mp3;
  playlist[ currentSong ] = minim.loadFile ( file );
  currentSong++;
}
currentSong=0;
file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
soundEffects[currentSong] = minim.loadFile( file );
//
for ( int i=0; i<numberOfSongs; i++ ) {
//
if ( playList[currentSong]==null || soundEffects[currentSong]==null) {
  //See FILE or minim.loadFile
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
   println("Music Pathway", musicDirectory);
   println("Full Music File Pathway", file);
   */
} //End ERROR Check Music and Sound Effect Variables
//
