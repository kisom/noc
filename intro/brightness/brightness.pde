float STEP = 0.05;

void setup() {
  size(640, 360);
  //noLoop();
}

float zoff = 0.0;

void draw() {
  background(0);
  loadPixels();
  float xoff = 0.0;

  for (int x = 0; x < width; x++) {
    xoff += STEP;
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      yoff += STEP;
      float bright = noise(xoff, yoff, zoff)*255;
      //float bright = random(0, 255);
      pixels[x+y*width] = color(0, bright, 0);
    }
  }
  updatePixels();
  zoff += STEP;
}

