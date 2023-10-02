//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage picBackground;
//
void setup() {
  //fullScreen(); //displayWidth, displayHeight
  size( 500, 100 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../../../imagesUsed/Landscape & Square Images/Obi-wan-star-wars-jedi-23864621-800-600.jpg");
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //Draw Image One Time, for testing
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End setup
//
void draw() {
  //draw image 60 times per second
  background(255); //built in BUG, we will explore this BUG on
  //Brightness and Nightmode control
  //image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
} //End draw
//
void keyPressed() {} //End keyPressed
//
void mousePressed() {} //End mousePressed
//
// End MAIN Program
