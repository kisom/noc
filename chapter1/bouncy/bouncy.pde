PVector location;
PVector velocity;
int zheight = 200;

void setup() {
  size(200, 200);
  smooth();
  location = new PVector(100, 100, 0);
  velocity = new PVector(2.5, 5, 1);
}
void draw() {
  background(255);
  location.add(velocity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  if ((location.z > zheight) || (location.z < 0)) {
    velocity.z = velocity.z * -1;
  }

  stroke(0);
  fill(175);
  ellipse(location.x, location.y, 16, 16);
}

