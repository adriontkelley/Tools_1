///This sketch was modified by undergrad Adrion T. Kelley for University of Oregon Art & Technology (UOAT) 2017
///adrionk@uoregon.edu


////This sketch requires the video Processing library



import processing.video.*;

Movie movie;

void setup() {
  size(568, 320);
  background(0);
  
  frameRate(10);
  
  // Load and play the video in a loop
  movie = new Movie(this, "1.mov");
  movie.loop();
  
}

void movieEvent(Movie m) {
  m.read();
}

void draw() {
  
  
  //if (movie.available() == true) {
  //  movie.read(); 
  //}
  
  
  image(movie, 0, 0, width, height);
  
  //movie.speed(1);
  
  saveFrame("output/Art_####.png");
}