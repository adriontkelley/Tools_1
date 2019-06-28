///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu


////This sketch requires the opencv_processing and video Processing libraries



import gab.opencv.*;
import processing.video.*;


Movie video;
OpenCV opencv;



void setup() {
   size(568, 320, P3D);
  video = new Movie(this, "1.mov");
  
  opencv = new OpenCV(this, 568, 320);
  
  video.loop();
  video.play();
  
  frameRate(5);

  

  
}

void draw() {
   //contours = opencv.findContours();
  opencv.loadImage(video);
  opencv.gray();
  
  image(opencv.getOutput(), 0, 0);
  
  saveFrame("output/Art_####.png");
 
}


void movieEvent(Movie m) {
  m.read();
}