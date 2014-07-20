void setup() {
  size(640, 480);
}

void draw() {
  background(255);
  
  PVector mouse = new PVector(mouseX, mouseY);
  PVector centre = new PVector(width/2, height/2);
  
  mouse.sub(centre);
  mouse.normalize();
  mouse.mult(10);
  
  translate(width/2, height/2);
  line(0, 0, mouse.x, mouse.y);
}
