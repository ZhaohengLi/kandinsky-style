class Grid {
  int x, y, d;
  int kind;

  color c1, c2, c3, c4;
  float theta;

  Grid(int kind, int x, int y, int d) {
    this.kind = kind;
    this.x = x;
    this.y = y;
    this.d = d;
    this.c1 = palette.getRandom();
    this.c2 = palette.getRandom();
    this.c3 = palette.getRandom();
    this.c4 = palette.getRandom();
    this.theta = random(TWO_PI);
  }

  void update() {
    this.theta += 0.002;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    rotate(this.theta);
    int a;

    switch (this.kind) {
    case 1:
      // jing zi ge
      a = int(d*0.18);
      strokeWeight(1);
      fill(c1);
      rect(0, 0, a, a);
      fill(c2);
      rect(0+a, 0, a, a);
      fill(c3);
      rect(0, 0+a, a, a);
      fill(c4);
      rect(0+a, 0+a, a, a);
      strokeWeight(2);
      stroke(0);
      strokeCap(SQUARE);
      line(0-2*a, 0, 0+4*a, 0);
      line(0-2*a, 0+a, 0+4*a, 0+a);
      line(0-2*a, 0+2*a, 0+4*a, 0+2*a);
      line(0, 0-2*a, 0, 0+4*a);
      line(0+a, 0-2*a, 0+a, 0+4*a);
      line(0+2*a, 0-2*a, 0+2*a, 0+4*a);
      break;
    case 2:
      // qian bi
      a = int(d*0.5);
      stroke(0);
      strokeWeight(2);
      fill(c1); //灰
      rect(0, 0, a, a);
      fill(c2); //米
      rect(0+a, 0, a, a);
      fill(c3); //黑
      rect(0, 0+a, a, a);
      fill(c4); //蓝
      rect(0+a, 0+a, a, a);

      strokeWeight(2);
      stroke(0);
      strokeCap(SQUARE);
      line(0, 0+2*a, 0+a, 0+5*a);
      line(0+0.5*a, 0+2*a, 0+a, 0+5*a);
      line(0+a, 0+2*a, 0+a, 0+5*a);
      line(0+1.5*a, 0+2*a, 0+a, 0+5*a);
      line(0+2*a, 0+2*a, 0+a, 0+5*a);
      break;
    case 3:
      noStroke();
      a = int(d/7);
      fill(c1);
      rect(0, 0, a, a);
      rect(0+a*2, 0, a, a);
      rect(0+a*4, 0, a, a);
      rect(0+a*6, 0, a, a);
      rect(0+a, 0+a, a, a);
      rect(0+a*3, 0+a, a, a);
      rect(0+a*5, 0+a, a, a);
      rect(0, 0+a*2, a, a);
      rect(0+a*2, 0+a*2, a, a);
      rect(0+a*4, 0+a*2, a, a);
      rect(0+a*6, 0+a*2, a, a);
      rect(0+a, 0+a*3, a, a);
      rect(0+a*3, 0+a*3, a, a);
      rect(0+a*5, 0+a*3, a, a);
      rect(0, 0+a*4, a, a);
      rect(0+a*2, 0+a*4, a, a);
      rect(0+a*4, 0+a*4, a, a);
      rect(0+a*6, 0+a*4, a, a);
      rect(0+a, 0+a*5, a, a);
      rect(0+a*3, 0+a*5, a, a);
      rect(0+a*5, 0+a*5, a, a);
      rect(0, 0+a*6, a, a);
      rect(0+a*2, 0+a*6, a, a);
      rect(0+a*4, 0+a*6, a, a);
      rect(0+a*6, 0+a*6, a, a);
      fill(0);
      rect(0+a, 0, a, a);
      rect(0+a*3, 0, a, a);
      rect(0+a*5, 0, a, a);
      rect(0, 0+a, a, a);
      rect(0+a*2, 0+a, a, a);
      rect(0+a*4, 0+a, a, a);
      rect(0+a*6, 0+a, a, a);
      rect(0+a, 0+a*2, a, a);
      rect(0+a*3, 0+a*2, a, a);
      rect(0+a*5, 0+a*2, a, a);
      rect(0, 0+a*3, a, a);
      rect(0+a*2, 0+a*3, a, a);
      rect(0+a*4, 0+a*3, a, a);
      rect(0+a*6, 0+a*3, a, a);
      rect(0+a, 0+a*4, a, a);
      rect(0+a*3, 0+a*4, a, a);
      rect(0+a*5, 0+a*4, a, a);
      rect(0, 0+a*5, a, a);
      rect(0+a*2, 0+a*5, a, a);
      rect(0+a*4, 0+a*5, a, a);
      rect(0+a*6, 0+a*5, a, a);
      rect(0+a, 0+a*6, a, a);
      rect(0+a*3, 0+a*6, a, a);
      rect(0+a*5, 0+a*6, a, a);
      break;
    }

    popMatrix();
  }
}
