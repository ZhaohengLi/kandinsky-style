class Curve {
  int kind;
  int x, y, r;

  Curve(int kind, int x, int y, int r) {
    this.kind = kind;
    this.x = x;
    this.y = y;
    this.r = r;
  }

  void update() {
  }

  void display() {
    pushMatrix();
    translate(x, y);
    switch(this.kind) {
    case 1:
      scale(float(this.r)/1000.0);
      strokeWeight(5);
      stroke(0);
      noFill();
      arc(150, 500, 300, 300, PI, TWO_PI);
      stroke(230, 193, 69);
      arc(450, 500, 300, 300, PI, TWO_PI);
      stroke(193, 39, 45);
      arc(750, 500, 300, 300, PI, TWO_PI);
      stroke(102);
      arc(1050, 500, 300, 300, PI, TWO_PI);
      break;
    case 2:
      scale(float(this.r)/750.0);
      noFill();
      stroke(0);
      strokeCap(SQUARE);
      strokeWeight(2);
      arc(150, 200, 300, 300, PI, TWO_PI);
      arc(450, 200, 300, 300, PI, TWO_PI);
      stroke(232, 181, 63);
      arc(600, 350, 300, 300, PI, TWO_PI);
      stroke(64, 130, 162);
      arc(750, 500, 300, 300, PI, TWO_PI);
      break;
    }

    popMatrix();
  }
}
