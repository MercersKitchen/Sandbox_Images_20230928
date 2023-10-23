/* Program Notes
 - Finish Nightmode: medium and difficult
 */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float bikeX, bikeY, bikeWidth, bikeHeight;
float darthX, darthY, darthWidth, darthHeight;
PImage picBackground, bikeForeground, darthVaderPortrait;
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 800, 600 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  // DIV rect() Variable Population
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
  //Aspect Ratio Change
  bikeWidth = 860; //hardcode of image file
  bikeHeight = 529;
  darthWidth = 352;
  darthHeight = 485;
  //Origonal Aspect Ratios of Images to Change
  //Compare the side Lengths to see which is bigger
  //"Compress" the biggest side into the rect()
  //Multiple the Image's Aspect Ratio to the smaller side
  //
  //Concatenation of Pathways
  String up = "..";
  String open = "/";
  String imagesPath = up + open + up + open + up + open + up + open;
  String landScapeImage = "imagesUsed/Landscape & Square Images/";
  String portraitImage = "imagesUsed/Portrait/";
  String obiImage = "Obi-wan-star-wars-jedi-23864621-800-600.jpg";
  String bikeImage = "bike.jpg";
  String darthImage  = "10-star-wars-darth-vader-portrait-wallpaper-1-325x485.jpg";
  picBackground = loadImage( imagesPath + landScapeImage + obiImage ); //Concatenation
  bikeForeground = loadImage( imagesPath + landScapeImage + bikeImage );
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
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( bikeForeground, bikeX, bikeY, bikeWidth, bikeHeight ); //bike image, purpose: see circles in aspect ratio
  image( darthVaderPortrait, darthX, darthY, darthWidth, darthHeight ); //Darth Vader in Portrait, geometry is landscape, thus centered
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
