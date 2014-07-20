class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;

  void update() {
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(10);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
  }
  
  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
    
    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}

Mover mover;

void setup() {
  size(640, 480);
  mover = new Mover();
}

void draw() {
  mover.update();
  mover.checkEdges();
  mover.display();
}