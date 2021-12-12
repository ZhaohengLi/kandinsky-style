class CD {
  float theta = 0.0;
  int x, y, r;
  float scale1;
  color c;

  int starRingDistanceCounter = 0;
  int starRingDistanceMin = 25;
  ArrayList<StarRing> StarRingCollection;

  CD(int x, int y, int r) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.scale1 = 0.618;
    this.c = palette.getRandom();
    this.StarRingCollection = new ArrayList<StarRing>();
  }

  void update(boolean isBeat) {
    this.theta += 0.02;
    this.createStarRing(isBeat);
  }

  void display() {
    pushMatrix();
    translate(this.x, this.y);
    rotate(this.theta);

    noStroke();
    fill(0);
    ellipse(0, 0, 2*this.r, 2*this.r);

    noStroke();
    fill(c);
    ellipse(0, 0, 2*this.r*this.scale1, 2*this.r*this.scale1);

    noStroke();
    fill(255);
    ellipse(0, this.r*this.scale1, 2*this.r*0.2, 2*this.r*0.2);

    this.drawStarRing();

    popMatrix();
  }

  void createStarRing(boolean isBeat) {
    if (this.starRingDistanceCounter > this.starRingDistanceMin) {
      if (isBeat) {
        StarRingCollection.add(new StarRing(this.r, color(0), 255, random(15, 20), random(0, 2*PI)));
        this.starRingDistanceCounter = 0;
      }
    }
    this.starRingDistanceCounter++;
  }

  void drawStarRing() {
    for (int i = 0; i < StarRingCollection.size(); i++) {
      StarRing nowRing = (StarRing)StarRingCollection.get(i);
      nowRing.displayRing();
      nowRing.displayStar();
      if (nowRing.rStarRing > nowRing.rStarMax) {
        StarRingCollection.remove(i);
      }
    }
  }
}

class StarRing {
  float rStarRing;
  color cRing;
  float alpha;
  float rStar;
  float starTheta;

  float rStarMax = 300;

  StarRing(float _rStarRing, color _cRing, float _alpha, float _rStar, float _starTheta) {
    rStarRing = _rStarRing;
    cRing = _cRing;
    alpha = _alpha;
    rStar = _rStar;
    starTheta = _starTheta;
  }

  void displayRing() {
    if (rStarRing < rStarMax) {
      stroke(cRing);
      noFill();
      strokeWeight(2);
      ellipse(0, 0, rStarRing*2, rStarRing*2);
      rStarRing++;
      alpha *= 0.99;
      cRing = color(hue(cRing), saturation(cRing), brightness(cRing), alpha);
    }
  }

  void displayStar() {
    if (rStarRing < rStarMax) {
      noStroke();
      fill(cRing);
      ellipse(rStarRing * cos(starTheta), rStarRing * sin(starTheta), rStar, rStar);
      starTheta -= 0.03;
      rStar *= 0.999;
      noFill();
    }
  }
}
