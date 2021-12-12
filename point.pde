class Point extends Component {
  Point(int x, int y, int r, int kind) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.kind = kind;
  }

  void display() {
    switch (this.kind) {
    case 1:
      pushMatrix();
      fill(21, 41, 10);
      translate(-(targetX/15), targetY/15);
      stroke(21, 41, 10);
      strokeWeight(4);
      ellipse(317, 310, 13, 13);
      popMatrix();
      break;
    case 2:
      pushMatrix();
      fill(21, 41, 10);
      translate(-(targetX/35), -(targetY/35));
      stroke(21, 41, 10);
      strokeWeight(4);
      ellipse(415, 210, 42, 42);
      popMatrix();
      break;
    case 3:
      pushMatrix();
      fill(21, 41, 10);
      translate(targetX/35, -(targetY/35));
      stroke(21, 41, 10);
      strokeWeight(4);
      ellipse(471, 268, 28, 28);
      popMatrix();
      break;
    case 4:
      pushMatrix();
      fill(21, 41, 10);
      translate(-(targetX/35), targetY/35);
      stroke(21, 41, 10);
      strokeWeight(4);
      ellipse(467, 458, 26, 26);
      popMatrix();
      break;
    case 5:
      pushMatrix();
      fill(21, 41, 10);
      translate(-(targetX/35), targetY/35);
      stroke(21, 41, 10);
      strokeWeight(4);
      ellipse(280, 488, 6, 6);
      popMatrix();
      break;
    }
  }
}
