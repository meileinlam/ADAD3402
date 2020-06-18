float noiseScale = 0.002;
void setup() {
  size(700, 500);
}
void draw() {
  background(0);
  
  float c = map(mouseX, 0, width, 0, 255);
  
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float noiseVal = noise(x*noiseScale, y*noiseScale);
      stroke(noiseVal*255, c, 0);
      point(x, y);
    }
  }
}
