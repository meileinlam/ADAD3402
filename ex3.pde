//changed noiseVal formula and used a line instead

float noiseScale = 0.02;

void draw() {
  background(0);
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float noiseVal = noise((mouseX+x)*noiseScale, (mouseY+y)*noiseScale);
      stroke(noiseVal*255);
      //point(x, y);
      line(x, y, x, height);
    }
  }
}
