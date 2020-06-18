//noiseScale is mapped with the placement of mouseX
//if mouse is at the most left, noiseScale = 0
//if mouse is at the most right, noiseScale = 1

void draw() {
  background(0);
  float noiseScale = map(mouseX, 0, width, 0, 1);
  
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float noiseVal = noise(x*noiseScale, y*noiseScale);
      stroke(noiseVal*255);
      point(x, y);
    }
  }
}
