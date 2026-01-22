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
//Global Variable
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
//
void testMetaData() {
  //
  println();
  println( "File Name: " + playListMetaData[currentSong].fileName() );
  println( "Length (in milliseconds): " + playListMetaData[currentSong].length() );
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
//End Subprogram Music Meta Data
