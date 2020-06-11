/*
 * A simple method for looping and creating a grid
 *
 * 
 */

void setup() {
  size(500, 500);
  rectMode(CORNER);
  noStroke();
  frameRate(1);  // set the frame rate to 1 draw() call per second
}


void draw(){
  background(mouseX*0.5); 
  int num = (int) random(3, 12);   // select a random number of squares each frame
  int gap = (int) random(5, 50); // select a random gap between each square
  
  drawSquare(num, gap);

}

void drawSquare (int num, int gap) {
    // calculate the size of each square for the given number of squares and gap between them
  float cellsize = ( width - (num + 1) * gap ) / (float)num;
  
  // print out the size of each square
  println("cellsize = " + cellsize);
  
    for (int i=0; i<num; i++) { // col
      for (int j=0; j<num; j++) { // row

        fill(rand255(), rand255(), rand255(), rand255()); // rectangle
        rect(gap * (i+1) + cellsize * i, gap * (j+1) + cellsize * j, cellsize, cellsize);
      }
    }
}

int rand255() {
 float n = random(0, 256);
 int i = int(n);
 
 return i;
}
