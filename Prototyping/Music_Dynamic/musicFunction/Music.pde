
//
//
void musicSetup() {
  //Music Loading - STRUCTURED Review
  minim = new Minim(this);
  String upArrow = "../../../";
  String musicFolder = "Music/"; 
  String soundEffectsFolder = "Sound Effects/"; 
  String normalFolder = "Normal/";
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "Blue Moon";
  songName[1] = "City Lights";
  songName[2] = "Golden Hour";
  //
  String soundEffect1 = "Assorted Computer Sounds";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + musicFolder + normalFolder;
  String soundEffectsDirectory = upArrow + musicFolder + soundEffectsFolder;
  String file; 
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    file = musicDirectory + songName[i] + fileExtension_mp3;
    playList[ currentSong ] = minim.loadFile( file ); 
    metaDataFileLoading();
    currentSong++;
  } //End File Loading
  currentSong=0;
  file = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[currentSong] = minim.loadFile( file );
  //
  for ( int i=0; i<numberOfSongs; i++ ) {
    //
    if ( playList[i]==null || soundEffects[currentSong]==null) { 
      //
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      printArray(soundEffects);
      /* println("Music Pathway", musicDirectory);
       println("Full Music File Pathway", file);
       */
    } //End ERROR Check Music and Sound Effect Variables
  } //End File Loading
  //
} //End Music Setup
//
// End Music Subprogram
