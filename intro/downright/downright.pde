class Walker {
  int x;
  int y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(255);
    point(x, y);
  }

  void step() {
    float r = random(1);
    int stepx = 0, stepy = 0;
    
    if (r <= 0.6) {
      stepx = 1;
    } else if (r <= 0.8) {
      stepx = -1;
    }
    
    r = random(1);
    if (r <= 0.6) {
      stepy = 1;
    } else if (r <= 0.8) {
      stepy = -1;
    }
    
    x += stepx;
    y += stepy;
  }
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

