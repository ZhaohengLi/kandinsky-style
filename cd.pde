class CD extends Component {
  int x, y;
  float r, constR, weight, constWeight;
  ArrayList<Ball> ballCollection = new ArrayList<Ball>();

  CD(int x, int y, float constR) {
    this.x = x;
    this.y = y;

    this.constR = constR;
    this.r = this.constR;

    this.constWeight = 28.0;
    this.weight = this.constWeight;
  }

  void update() {
    if (isBeat) {
      this.weight = int(this.constWeight*1.3);
      this.r = int(1.05*this.constR);
    } else {
      if (this.weight > this.constWeight) {
        this.weight -= 0.008*this.weight;
      }
      if (this.r > this.constR) {
        this.r -= 0.001*this.r;
      }
    }
  }

  void display() {
    this.update();
    pushMatrix();
    translate(this.x, this.y);

    noFill();
    stroke(21, 41, 10);
    strokeWeight(this.weight);
    ellipse(0, 0, 2*this.r, 2*this.r);

    this.ball();

    popMatrix();
  }

  void ball() {
    int dice = (int)random(0, 6);
    if (dice == 1) {
      float ballTheta = random(0, 2*PI);
      float ballRadius = 30;
      ballCollection.add(new Ball(ballTheta, ballRadius, r));
    }
    for (Ball myball : ballCollection) {
      myball.display();
    }
    for (int i = 0; i < ballCollection.size(); i++) {
      Ball removeBall = (Ball)ballCollection.get(i);
      if (removeBall.isDead()) {
        ballCollection.remove(i);
      }
    }
  }
}

class Ball {
  float ballTheta;
  float ballRadius;
  float r;
  PVector ballLocation;
  PVector speed;
  float lifespan;

  Ball(float _ballTheta, float _ballRadius, float _r) {
    ballTheta = _ballTheta;
    ballRadius = _ballRadius;
    r = _r;
    ballLocation = new PVector(r * cos(ballTheta), r * sin(ballTheta));
    speed = new PVector(cos(ballTheta)*2, sin(ballTheta)*2);
    lifespan = 70;
  }
  void display() {
    noStroke();
    fill(21, 41, 10, lifespan*4+10);
    ellipse(ballLocation.x, ballLocation.y, ballRadius, ballRadius);
    ballLocation.add(speed);
    ballRadius *= 0.99;
    lifespan -= 1.0;
  }
  Boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}
