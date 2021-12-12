class Dot { //<>//
  int kind;
  int x, y, r, constR;
  float scale1, scale2;
  float time1, time2;
  color c1;
  color c2;
  int strokeWeight;
  float theta;

  Dot(int kind, int x, int y, int constR) {
    this.kind = kind;
    this.x = x;
    this.y = y;
    this.constR = constR;
    this.r = constR;

    this.c1 = palette.getRandom();
    this.c2 = palette.getRandom();
    this.strokeWeight = int(random(0, 4));

    this.time1 = random(10);
    this.time2 = random(10);
    this.scale1 = random(1);
    this.scale2 = random(1);

    this.theta = random(TWO_PI);
    //this.theta = 0;
  }

  void update(boolean isBeat) {
    this.scale1 = noise(time1);
    this.scale2 = noise(time2);
    time1 += 0.005;
    time2 += 0.005;
    //this.x += randomGaussian();
    //this.y += randomGaussian();
    if (isBeat) {
      this.r = int(1.2*this.constR);
    } else if (this.r > this.constR) {
      this.r -= 0.005*r;
    }
  }

  void display() {
    pushMatrix();
    translate(this.x, this.y);
    rotate(this.theta);
    switch (this.kind) {
    case 101:
      //yuan
      stroke(0);
      strokeWeight(this.strokeWeight);
      fill(this.c1);
      ellipse(0, 0, 2*this.r, 2*this.r);
      break;
    case 102:
      //shuang yuan
      noStroke();
      fill(this.c1);
      ellipse(0, 0, 2*this.r, 2*this.r);
      stroke(0);
      strokeWeight(this.strokeWeight);
      fill(this.c2);
      ellipse(0, 0, 2*this.r*this.scale1, 2*this.r*this.scale1);
      break;
    case 201:
      //san jiao
      strokeWeight(this.strokeWeight);
      stroke(0);
      strokeCap(SQUARE);
      fill(c1);
      triangle(-r*0.58, r*0.5, r*0.58, r*0.5, 0, -r);
    }
    popMatrix();
  }
}
