///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu
import processing.video.*;

Capture cam;

PImage img;
boolean newFrame=false;

void setup(){
  size(568, 320, P3D);
  
  
  
  cam = new Capture(this, 40*4, 30*4, 20);
        // Comment the following line if you use Processing 1.5
        cam.start();
  
 

  
  
  
  img = new PImage(568,320);
  
 
}

void draw(){
  
  background(0);
  
  if (newFrame)
  {
    newFrame=false;
    //image(cam,-1000,-1000,width,height);
    
    
    img.copy(cam, 0, 0, cam.width, cam.height, 
        0, 0, img.width, img.height);
    
  }
 translate(568,0);
 rotateY(-179);
 image(img,0,0);
 

}

void captureEvent(Capture cam)
{
  cam.read();
  newFrame = true;
}
