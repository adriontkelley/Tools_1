///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu


PImage img;

void setup(){
  size(97, 67 );
  img = loadImage("Grumpy2.png");
  
 
}

void draw(){
  
  //background();
  //tint(1, 0);
  //image(img, -1000,-1000);
  img.resize(97, 67);
  image(img, 0, 0);

if ( keyPressed ) {
        saveFrame("images/artwork-####.png");
    }

}