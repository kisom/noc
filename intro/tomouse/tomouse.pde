class Point {
  int x;
  int y;

  Point() {
    x = width/2;
    y = height/2;
  }

  Point(int nx, int ny) {
    x = nx;
    y = ny;
  }

  int X() {
    return x;
  }

  int Y() {
    return y;
  }

  void display() {
    stroke(255);
    point(x, y);
  }
}

class Walker {
  Point loc;

  Walker() {
    loc = new Point();
  }

  void display() {
    loc.display();
  }

  void step() {
    float r = random(1);
    if (r <= 0.6) {
      loc = towardsMouse(loc);
    } else {
      int stepx = int(random(3))-1;
      int stepy = int(random(3))-1;
      loc = new Point(loc.X()+stepx, loc.Y()+stepy);
    }
  }
}

Point towardsMouse(Point loc) {
  int x = loc.X(), y = loc.Y();
  if (x > mouseX) {
    x--;
  } else {
    x++;
  }

  if (y > mouseY) {
    y--;
  } else {
    y++;
  }

  return new Point(x, y);
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

