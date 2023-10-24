/* Program Notes
 - Finish Nightmode: medium and difficult
 - How do you center these images
 */
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float bikeXrect, bikeYrect, bikeWidthRect, bikeHeightRect, bikeWidth, bikeHeight;
float darthXrect, darthYrect, darthWidthRect, darthHeightRect, darthWidth, darthHeight;
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
  //DIV rect() Variable Population
  //Origonal Aspect Ratios of Images to Change
  //Compare the side Lengths to see which is bigger
  //"Compress" the biggest side into the rect()
  //Multiple the Image's Aspect Ratio to the smaller side
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  bikeXrect = appWidth*1/14;
  bikeYrect = appHeight*1/8;
  bikeWidthRect = appWidth*2.25/7;
  bikeHeightRect = appHeight*1/4; // 2/8
  darthXrect = bikeXrect;
  darthYrect = appHeight*5/8;
  darthWidthRect = bikeWidthRect;
  darthHeightRect = bikeHeightRect;
  //Aspect Ratio Change
  bikeWidth = 860.0;//hardcode of image file
  bikeHeight = 529.0; //from Image File
  darthWidth = 352.0; //from Image File
  darthHeight = 485.0; //from Image File
  float aspectRatio = 0.0; //Local Variable
  if ( bikeWidth >= bikeHeight ) { //BIKE Image if Landscape
    //Comparison Verification
    println("BIKE is Landscape");
    aspectRatio = bikeHeight / bikeWidth; // smaller/large=0 if int, use casting
    //memory of smaller side
    bikeWidth = bikeWidthRect;
    bikeHeight = aspectRatio * bikeWidth;
    if ( bikeHeight > bikeHeightRect ) { //ERROR Catch is bikeHeight > bikeHeightRect
      println("ERROR: Aspect Calcualtion Too Big");
    }
  } else { //BIKE Image if Portrait
    //Comparison Verification
    println("BIKE is Portrait");
    //Repeat Aspect Ratio
    //Comparison Verification
    aspectRatio = bikeWidth / bikeHeight; // smaller/large=0 if int, use casting
    //memory of smaller side
    bikeHeight = bikeHeightRect;
    bikeWidth = aspectRatio * bikeHeight;
    if ( bikeWidth > bikeWidthRect ) { //ERROR Catch is bikeHeightRect > bikeHeight
      println("ERROR: Aspect Calcualtion Too Big");
    }
  } //End IF
  if ( darthWidth >= darthHeight ) { //DARTH Image if Landscape
    //Comparison Verification
    println("DARTH is Landscape");
    //Repeat Aspect Ratio
    aspectRatio = darthHeight / darthWidth; // smaller/large=0 if int, use casting
    //memory of smaller side
    darthWidth = darthWidthRect;
    darthHeight = aspectRatio * darthWidth;
    if ( darthHeight > darthHeightRect ) { //ERROR Catch is bikeHeight > bikeHeightRect
      println("ERROR: Aspect Calcualtion Too Big");
    }
  } else { //DARTH Image if Portrait
    //Comparison Verification
    println("DARTH is Portrait");
    //Repeat Aspect Ratio
    aspectRatio = darthWidth / darthHeight; // smaller/large=0 if int, use casting
    //memory of smaller side
    darthHeight = darthHeightRect;
    darthWidth = aspectRatio * darthHeight;
    if ( darthWidth > darthWidthRect ) { //ERROR Catch is darthHeightRect > darthHeight
      println("ERROR: Aspect Calcualtion Too Big");
    }
  } //End IF
  //Error Check of Smaller Dimension
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
  //rect( bikeXrect, bikeYrect, bikeWidthRect, bikeHeightRect ); //bike image
  //rect( darthXrect, darthYrect, darthWidthRect, darthHeightRect ); //Darth Image
  //
} //End setup
//
void draw() {
  //background(255); //built in BUG, 1 pixel
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  rect( bikeXrect, bikeYrect, bikeWidthRect, bikeHeightRect ); //bike image
  image( bikeForeground, bikeXrect, bikeYrect, bikeWidth, bikeHeight ); //bike image, purpose: see circles in aspect ratio
  //
  rect( darthXrect, darthYrect, darthWidthRect, darthHeightRect ); //Darth Image
  //NOTE: how would this image be centered or justified (left or right)
  image( darthVaderPortrait, darthXrect, darthYrect, darthWidth, darthHeight ); //Darth Vader in Portrait, geometry is landscape, thus centered
  //
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End MAIN Program
