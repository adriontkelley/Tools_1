///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu


////This sketch requires the opencv_processing and video Processing libraries


import gab.opencv.*;

OpenCV opencv;





PImage img;


void setup() {
 
  size(2560, 1198);
  
  opencv = new OpenCV(this, 2560, 1198);
  
  img = loadImage("10.png");
  
  
}

void draw() {
  
  
  
   
  
  
  opencv.loadImage(img);
  opencv.findCannyEdges(150,75);
  image(opencv.getOutput(), 0, 0);
  

  
  
 if ( keyPressed ) {
        saveFrame("images/artwork-####.png");
    }
  
}