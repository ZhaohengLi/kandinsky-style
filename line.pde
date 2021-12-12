class Line {
  int kind;
  int x, y, d;

  int count;
  int w;
  float theta;
  int[] weightList;


  Line(int kind, int x, int y, int d) {
    this.kind = kind;
    this.x = x;
    this.y = y;
    this.d = d;

    //this.count = int(random(1, 4));
    this.count = 3;
    this.w = 10;
    this.theta = random(TWO_PI);
    this.weightList = new int[this.count];
    for (int i=0; i<this.count; i++) {
      weightList[i] = int(random(1, 7));
    }
  }

  void update(boolean isBeat) {
    this.theta += 0.003;
  }

  void display() {
    pushMatrix();
    translate(x, y);
    rotate(this.theta);

    switch (this.kind) {
    case 1:
      // san xian
      strokeCap(SQUARE);
      stroke(0);
      for (int i=0; i<this.count; i++) {
        strokeWeight(this.weightList[i]);
        line(0, 0+i*this.w, this.d, 0+i*this.w);
      }
      break;
    case 2:
      // jiao
      strokeWeight(this.weightList[0]);
      stroke(0);
      strokeCap(SQUARE);
      line(0, 0, d, 0-2*d);
      line(0, 0, 0+1.5*d, 0-1.2*d);
      break;
    }
    popMatrix();
  }
}
