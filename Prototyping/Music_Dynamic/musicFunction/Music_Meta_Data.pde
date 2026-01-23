/* Text - Dynamic Strings and MetaData
 What is available from Minim Documentation, 20250421
 - https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
 File Name: meta.fileName()
 Length (in milliseconds): meta.length()
 Title: meta.title()
 Author: meta.author()
 Album: meta.album()
 Date: meta.date()
 Comment: meta.comment()
 Lyrics: meta.lyrics()
 Track: meta.track()
 Genre: meta.genre()
 Copyright: eta.copyright()
 Disc: meta.disc()
 Composer: meta.composer()
 Orchestra: meta.orchestra()
 Publisher: meta.publisher()
 Encoded: meta.encoded()
 */
//
void metaDataFileLoading() { //playList[ currentSong ] = minim.loadFile( file )
  playListMetaData[ currentSong ] = playList[ currentSong ].getMetaData();
} //End Meta Data File Loading
//
void testMetaData() {
  //Print What is available on a particular song
  println();
  println( "File Name: " + playListMetaData[currentSong].fileName() );
  println( "Length (in milliseconds): " + playListMetaData[currentSong].length() );
  println( "Length (in seconds): " + ( playListMetaData[currentSong].length() )/1000 );
  println( "Title: " + playListMetaData[currentSong].title() );
  println( "Author: " + playListMetaData[currentSong].author() );
  println( "Album: " + playListMetaData[currentSong].album() );
  println( "Date: " + playListMetaData[currentSong].date() );
  println( "Comment: " + playListMetaData[currentSong].comment() );
  println( "Lyrics: " + playListMetaData[currentSong].lyrics() );
  println( "Track: " + playListMetaData[currentSong].track() );
  println( "Genre: " + playListMetaData[currentSong].genre() );
  println( "Copyright: " + playListMetaData[currentSong].copyright() );
  println( "Disc: " + playListMetaData[currentSong].disc() );
  println( "Composer: " + playListMetaData[currentSong].composer() );
  println( "Orchestra: " + playListMetaData[currentSong].orchestra() );
  println( "Publisher: " + playListMetaData[currentSong].publisher() );
  println( "Encoded: " + playListMetaData[currentSong].encoded() );
} //End Test Meta Data
//
void saveSongTitle() {
  //
  if ( playList[currentSong].isPlaying() == true) {
    //titleDIV();
    songTitle = playListMetaData[currentSong].title();
    //println("Check VAR currentSongFileName", currentSongFileName);
  } else {
    //titleDIV();
    songTitle = "I Hate Bananas!";
  }
} //End Print Song Title in draw()
//End Subprogram Music Meta Data
