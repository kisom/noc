int STEP_SIZE = 5;
float TIME_RES = 0.01;

class Walker {
  int x;
  int y;
  float tx;
  float ty;

  Walker() {
    x = width/2;
    y = height/2;
    tx = ty = 0.0;
  }

  void display() {
    stroke(255);
    point(x, y);
  }

  void step() {
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;

    x += (stepx * randstep(tx));
    y += (stepy * randstep(ty));
    tx += TIME_RES;
    ty += TIME_RES;
  }
}

int randstep(float t) {
  return int(map(noise(t), 0, 1, 0, STEP_SIZE));
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(0);
}

void draw() {
  w.step();
  w.display();
}

