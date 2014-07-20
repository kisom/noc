class Car {
  PVector location;
  PVector velocity;
  PVector acceleration;

  void update() {
    location.add(velocity);
    checkEdges();
  }

  void accelerate(float xacc) {
    acceleration.add(xacc, 0, 0);
    velocity.add(acceleration);
    velocity.limit(10);
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

  void display() {
    background(255);
    fill(80);
    rect  (location.x, location.y, 20, 10);
  }

  Car() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
}

Car car;

void setup() {
  size(640, 480);
  car = new Car();
}

void draw() {
  car.update();
  car.display();
}

int direction = 0;
float xacc = 0;

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (direction <= 0) {
        direction = 1;
        xacc = 0;
      }
      xacc += 0.1;
      car.accelerate(xacc);
    } else if (keyCode == DOWN) {
      print("DOWN\n");
      if (direction >= 0) {
        direction = -1;
        xacc = 0;
      }
      xacc -= 0.1;
      car.accelerate(xacc);
    }
  }
}

void keyReleased() {
  direction = 0;
  xacc = 0;
}

