PImage img;


void setup() {
 
  size(650, 380);
  frameRate(3);
  
  img = loadImage("Grumpy2.png");
  
}

void draw() {
  
  
  
   
        
        image(img,0,0);
        
        
     loadPixels();
     img.loadPixels();
     for (int x = 0; x < width; x++) {
       for (int y = 0; y < height; y++) {
         int loc = x+y*width;
         float b = brightness(img.pixels[loc]);
         if (b < 1) {
           pixels[loc] = color(255);
         } else {
           pixels[loc] = color(0);
         }
        
       }
        
     }
     updatePixels();
     
     
     if ( keyPressed ) {
        saveFrame("images/artwork-####.png");
    }
}