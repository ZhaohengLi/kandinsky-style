class CD {
  float theta = 0.0;
  int x, y, r;
  float scale1, scale2;

  CD(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.scale1 = 0.78;
    this.scale2 = 0.37;
  }

  void update(boolean isBeat) {
    this.theta += 0.02;
  }

  void display() {
    pushMatrix();
    translate(this.x, this.y);
    rotate(this.theta);
    
    noStroke();
    fill(217, 132, 101, 80);
    ellipse(0, 0, 2*this.r, 2*this.r);
    fill(0);
    ellipse(0, 0, 2*this.r*this.scale1, 2*this.r*this.scale1);
    fill(79, 37, 83);
    ellipse(0, 0, 2*this.r*this.scale2, 2*this.r*this.scale2);
    fill(255);
    ellipse(0, this.r*this.scale2, 2*this.r*this.scale2*0.25, 2*this.r*this.scale2*0.25);
    
    popMatrix();
  }
}
