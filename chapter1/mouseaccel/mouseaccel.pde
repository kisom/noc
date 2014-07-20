class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;

  void update() {
    float anything = 0.5;
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);

    if (dir.mag() != 0.0) {
      float mag = 1 - (1 / dir.magSq());
      mag = map(mag, 0, 1, 0, 5);
      dir.setMag(mag); 
    }
    print(acceleration + "\n");
    acceleration = dir;
    velocity.add(acceleration);
    velocity.limit(5);
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }

  Mover() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(-0.001, 0.01);
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

