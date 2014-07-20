class Walker {
  PVector loc;

  Walker() {
    loc = new PVector(width/2, height/2);
  }

  void display() {
    stroke(255);
    point(loc.x, loc.y);
  }

  void step() {
    PVector step = PVector.random2D();
    step.random2D();
    loc.add(step);
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

