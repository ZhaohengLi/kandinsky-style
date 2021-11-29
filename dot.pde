class Dot { //<>// //<>//
  int kind;
  int x, y, r, constR;
  float scale1, scale2;
  float time1, time2;

  Dot(int kind, int x, int y, int constR) {
    this.kind = kind;
    this.x = x;
    this.y = y;
    this.constR = constR;
    this.r = constR;

    this.time1 = random(10);
    this.time2 = random(10);
    this.scale1 = random(1);
    this.scale2 = random(1);
  }

  void update(boolean isBeat) {
    this.scale1 = noise(time1);
    this.scale2 = noise(time2);
    time1 += 0.005;
    time2 += 0.005;
    //this.x += randomGaussian();
    //this.y += randomGaussian();
    if (isBeat) {
      this.r = int(1.5*this.constR);
    } else if (this.r > this.constR) {
      this.r -= 0.01*r;
    }
  }

  void display() {
    pushMatrix();
    translate(this.x, this.y);

    switch (this.kind) {
    case 101:
      noStroke();
      fill(181, 187, 193, 100);
      ellipse(0, 0, 2*this.r, 2*this.r);
      noStroke();
      fill(128, 179, 194, 100);
      ellipse(0, 0, 2*this.r*this.scale1, 2*this.r*this.scale1);
      strokeWeight(2);
      stroke(0);
      fill(232, 181, 63, 100);
      ellipse(0, 0, 2*this.r*this.scale2, 2*this.r*this.scale2);
      break;
    case 102:
      noStroke();
      fill(241, 211, 100, 100);
      ellipse(0, 0, 2*this.r, 2*this.r);
      fill(221, 193, 144, 100);
      ellipse(0, 0, 2*this.r*this.scale1, 2*this.r*this.scale1);
      fill(64, 130, 162, 100);
      ellipse(0, 0, 2*this.r*this.scale2, 2*this.r*this.scale2);
      break;
    case 103:
      scale(float(this.r)/500.0);
      //黑圈白
      stroke(0);
      strokeWeight(1);
      fill(255);
      ellipse(200, 200, 200, 200);

      //紫
      noStroke();
      fill(#8771A2, 120);
      ellipse(300, 300, 300, 300);

      //绿
      noStroke();
      fill(#97A077, 120);
      ellipse(500, 500, 300, 300);

      //蓝
      noStroke();
      fill(#4798C6, 100);
      ellipse(100, 400, 200, 200);

      //黄
      noStroke();
      fill(#DEAF45);
      ellipse(100, 100, 150, 150);
      break;
    case 201:
      scale(float(this.r)/400.0);
      beginShape();
      noStroke();
      fill(#E0AD48, 120);
      vertex(100, 300);
      vertex(200, 160);
      vertex(280, 400);
      endShape();
      break;
    }

    popMatrix();
  }
}
