//Random generator;
int sd = 20;
int mnx;
int mny;

void setup() {
 size(640, 340);
 mnx = width/2;
 mny = height/2;
 //generator = new Random();
 background(0);
}

void draw() {
  stroke(constrain(int(randomGaussian())*sd+127, 0, 255));
  //stroke(255);
  int x = (int(randomGaussian()) * sd) + mnx;
  int y = (int(randomGaussian()) * sd) + mny;
  ellipse(x, y, 10, 10);
}
