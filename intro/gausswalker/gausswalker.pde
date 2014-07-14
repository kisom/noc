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
    int stepx = int(random(3))-1;
    int stepy = int(random(3))-1;

    x += (stepx * randstep());
    y += (stepy * randstep());
  }
}

int randstep() {
  return int(randomGaussian())*sd + mn;
}

Walker w;
int sd = 1;
int mn = 5;

void setup() {
  size(640, 360);
  w = new Walker();
  background(0);
}

void draw() {
  w.step();
  w.display();
}

