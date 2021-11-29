class Line {
  int kind;
  int x, y, r;

  Line(int kind, int x, int y, int r) {
    this.kind = kind;
    this.x = x;
    this.y = y;
    this.r = r;
  }

  void update(boolean isBeat) {
  }

  void display() {
    pushMatrix();
    translate(x, y);

    switch (this.kind) {
    case 1:
      scale(float(this.r)/440.0);
      strokeWeight(5);
      strokeCap(SQUARE);
      stroke(0);
      line(400, 100, 100, 400);
      strokeWeight(3);
      line(420, 100, 120, 400);
      strokeWeight(1);
      line(440, 100, 140, 400);
      break;
    case 2:
      scale(float(this.r)/600.0);
      strokeWeight(10);
      strokeCap(SQUARE);
      fill(0);
      arc(80, 330, 450, 450, 0, HALF_PI);
      fill(255);
      noStroke();
      ellipse(85, 300, 450, 450);
      strokeWeight(3);
      strokeCap(ROUND);
      stroke(0);
      line(100, 100, 456, 265);
      strokeWeight(2);
      line(130, 265, 311, 265);
      strokeWeight(1);
      line(150, 300, 331, 300);
      strokeWeight(1);
      line(200, 80, 200, 606);
      break;
    case 3:
      scale(float(this.r)/750.0);
      noFill();
      stroke(0);
      strokeWeight(0.5);
      line(500, 100, 350, 600);
      line(500, 100, 650, 600);
      strokeWeight(1);
      line(250, 500, 750, 500);
      break;
    }

    popMatrix();
  }
}
