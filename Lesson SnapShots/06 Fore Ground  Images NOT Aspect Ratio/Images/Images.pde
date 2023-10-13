/* Program Notes
 - Finish Nightmode: medium and difficult
 */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float bikeX, bikeY, bikeWidth, bikeHeight;
float darthX, darthY, darthWidth, darthHeight;
PImage picBackground, bikeForeground, darthVaderPortrait;
Boolean nightmode=false; //Note: clock will automatically turn on
Boolean brightnessControl=false; //Note: ARROWS
int brightnessNumber=128; //Range:1-255
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 800, 600 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  int hourNightMode = hour(); //24-hour clock
  println(hourNightMode);
  if ( hourNightMode>17 ) {
    nightmode=true;
  } else if ( hourNightMode<05 ) {
    nightmode=true;
  } else {
    nightmode=false;
  }
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  bikeX = appWidth*1/14;
  bikeY = appHeight*1/8;
  bikeWidth = appWidth*2.25/7;
  bikeHeight = appHeight*1/4; // 2/8
  darthX = bikeX;
  darthY = appHeight*5/8;
  darthWidth = bikeWidth;
  darthHeight = bikeHeight;
  //Concatenation of Pathways
  String up = "../../../";
  String open = "/";
  String imagesPath = up + open;
  String landScapeImage = "imagesUsed/Landscape & Square Images/";
  String portraitImage = "imagesUsed/Portrait/";
  String obiImage = "Obi-wan-star-wars-jedi-23864621-800-600.jpg";
  String bikeImage = "bike.jpg";
  String darthImage  = "10-star-wars-darth-vader-portrait-wallpaper-1-325x485.jpg";
  picBackground = loadImage( imagesPath + landScapeImage + obiImage ); //Concatenation
  bikeForeground = loadImage( imagesPath + landScapeImage + bikeImage);
  darthVaderPortrait = loadImage( imagesPath + portraitImage + darthImage);
  //
  //DIVs
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //rect( bikeX, bikeY, bikeWidth, bikeHeight ); //bike image
  //rect( darthX, darthY, darthWidth, darthHeight ); //Darth Image
  //
} //End setup
//
void draw() {
  //background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //println(brightnessControl, nightmode);
  if ( brightnessControl==true )
  { //Gray Scale: 1/2 tint (i.e 128/256=1/2)
    if ( brightnessNumber<1 ) {
      brightnessNumber=1;
    } else if ( brightnessNumber>255 ) {
      brightnessNumber=255;
    } else {
      //Empty ELSE
    }
    tint (255, brightnessNumber);
    //println(brightnessNumber);
  }
  //if ( nightmode==true ) tint ( 64, 64, 40 ); //Gray Scale: 1/2 tint (i.e 128/256=1/2)
  if ( nightmode==true ) {
    tint ( 64, 64, 40 ); //Blue Light must be limited, i.e. <40
    //println(nightmode);
  } else {
    noTint(); //See Processing DOC
    //println(nightmode);
  }
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( bikeForeground, bikeX, bikeY, bikeWidth, bikeHeight ); //bike image, purpose: see circles in aspect ratio
  image( darthVaderPortrait, darthX, darthY, darthWidth, darthHeight ); //Darth Vader in Portrait, geometry is landscape, thus centered
} //End draw
//
void keyPressed() {
  if ( key=='n' || key=='N' ) { //Nightmode, basic control is Boolean
    if ( nightmode==true ) {
      nightmode = false;
    } else {
      nightmode = true;
    }
  }
  //Brightness: ARROWS activate brightnessControl, never off
  //NOTE: Nightmode does turn off
  if ( key==CODED && keyCode==UP || keyCode==DOWN ) { //Brightness keybind
    brightnessControl = true;
    //Builtin BUG, use Boolean to draw() formulae instead
    if ( key==CODED && keyCode==UP ) brightnessNumber++ ; //brightnessNumber+=1 //brightnessNumber = brightnessNumber+1
    if ( key==CODED && keyCode==DOWN ) brightnessNumber-- ; //brightnessNumber-=1
    //CONTINUE HERE with brightness toggles
  }
  //
  println(brightnessNumber);
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
