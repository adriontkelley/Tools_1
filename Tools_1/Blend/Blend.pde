PImage img;
PImage img2;

void setup() {
 
  size(1280, 720);
  
  
  img = loadImage("1.png");
  img2 = loadImage("2.png");
  
  
}

void draw() {
  
  background(img2);
  
  image(img,0,0);
  
  blend(img2,0,0,img2.width,img.height,0,0,img.width,img.height,DARKEST);
  
  
  if ( keyPressed ) {
        saveFrame("images/artwork-####.png");
    }
}