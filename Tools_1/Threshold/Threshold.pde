import gab.opencv.*;

PImage img;
OpenCV opencv;

void setup(){
  size(650,380);
img = loadImage("Grumpy.jpg");
opencv = new OpenCV(this, 650, 380);

}


void draw(){
  
  opencv.loadImage(img);
  opencv.threshold(150);
  image(opencv.getOutput(), 0, 0);


if ( keyPressed ) {
        saveFrame("images/artwork-####.png");
    }
  
}