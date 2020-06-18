//replacing point with different shapes
//also added in fill()
//note: some of the shapes/lines take a bit of time to load for me

float noiseScale = 0.002;

void setup() {
  size(700, 500);
}
void draw() {
  background(0);

  createPerlin();
}

void createPerlin() {
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float noiseVal = noise(x*noiseScale, y*noiseScale);
      stroke(noiseVal*255);  
      fill(noiseVal*255);
      point(x, y);
      //ellipse(x, y, 5, 5);
      //rect(x, y, 5, 5);
      //line(x, y, x+5, y+5);
      //line(x, 0, y, height);
    }
  }
}
