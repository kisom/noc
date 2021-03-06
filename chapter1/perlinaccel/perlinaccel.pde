class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float xt, yt;

  void update() {
    float xacc = map(noise(xt, yt), 0, 1, -1, 1);
    
    acceleration = new PVector(map(noise(xt, yt), 0, 1, -1, 1), map(noise(yt, xt), 0, 1, -1, 1));
    xt += 0.03; 
    yt += 0.03;
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
    xt = 0.0;
    yt = random(1, 10000);
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

