class Circle extends Component {

  Circle(int x, int y, int r, int kind) {
    this.x = x;
    this.y = y;
    this.r = r;
    this.kind = kind;
  }

  void display() {
    switch (this.kind) {
    case 1:
      pushMatrix();
      fill(127, 185, 81, (easingX/2));
      stroke(21, 41, 10);
      strokeWeight(1);
      ellipse(330-(easingX/20), 360+(easingY/15), 210, 210);
      popMatrix();
      break;
    case 2:
      pushMatrix();
      fill(252, 244, 76, (easingX/2));
      noStroke();
      ellipse(267+(easingX/10), 372+(easingY/15), 163, 163);
      popMatrix();
      break;
    case 3:
      pushMatrix();
      fill(108, 206, 125, (easingY/2));
      noStroke();
      ellipse(466+(easingX/15), 308, 157, 157);
      popMatrix();
      break;
    case 4:
      pushMatrix();
      fill(183, 69, 17, (easingX/2));
      stroke(21, 41, 10);
      strokeWeight(7);
      ellipse(140, 310, 37+(easingX/20), 37+(easingX/20));
      popMatrix();
      break;
    case 5:
      pushMatrix();
      translate(easingX/17, easingY/8);
      fill(7, 103, 131, (easingX/4));
      stroke(21, 41, 10);
      strokeWeight(3);
      ellipse(110, 393, 16, 16);
      popMatrix();
      break;
    case 6:
      pushMatrix();
      fill(74, 165, 167, (easingX/2));
      stroke(21, 41, 10);
      strokeWeight(3);
      ellipse(182, 397, 49, 49);
      popMatrix();
      break;
    case 7:
      pushMatrix();
      fill(201, 134, 10, (easingY/2));
      stroke(21, 41, 10);
      strokeWeight(1);
      ellipse(146+(easingX/17), 490, 37, 37);
      popMatrix();
      break;
    case 8:
      pushMatrix();
      fill(183, 69, 17, (easingY/2));
      stroke(21, 41, 10);
      strokeWeight(2);
      ellipse(248-(easingX/20), 445+(easingY/17), 60, 60);
      popMatrix();
      break;
    case 9:
      pushMatrix();
      fill(183, 69, 17, (easingX/2));
      noStroke();
      ellipse(358-(easingY/7), 233-(easingY/10), 116, 116);
      popMatrix();
      break;
    case 10:
      pushMatrix();
      fill(234, 172, 135, (easingY/5));
      stroke(21, 41, 10);
      strokeWeight(1);
      ellipse(262, 198, 140, 140);
      popMatrix();
      break;
    case 11:
      pushMatrix();
      translate(easingY/40, easingX/10);
      fill(183, 69, 17, (easingX/4));
      stroke(21, 41, 10);
      strokeWeight(2);
      ellipse(315, 80, 15, 15);
      popMatrix();
      break;
    case 12:
      pushMatrix();
      fill(252, 244, 76, (easingY/2));
      stroke(21, 41, 10);
      strokeWeight(1);
      ellipse(440, 420, 105+(easingY/25), 105+(easingY/25));
      popMatrix();
      break;
    case 13:
      pushMatrix();
      fill(222, 150, 90, (easingX/2));
      stroke(21, 41, 10);
      strokeWeight(2);
      ellipse(367, 552, 37, 37);
      popMatrix();
      break;
    case 14:
      pushMatrix();
      fill(222, 150, 90, (easingX/2));
      stroke(21, 41, 10);
      strokeWeight(2);
      ellipse(534, 486, 27, 27);
      popMatrix();
      break;
    case 15:
      pushMatrix();
      translate(easingY/20, easingX/20);
      fill(191, 122, 58, (easingX/4));
      stroke(21, 41, 10);
      strokeWeight(1);
      ellipse(325, 478, 13, 13);
      popMatrix();
      break;
    case 16:
      pushMatrix();
      fill(252, 244, 76, (easingX/4));
      noStroke();
      ellipse(405, 505, 18, 18);
      popMatrix();
      break;
    case 17:
      pushMatrix();
      fill(191, 122, 58, (easingX/2));
      stroke(21, 41, 10);
      strokeWeight(1);
      ellipse(344+(easingX/17), 402-(easingY/10), 20, 20);
      popMatrix();
      break;
    case 18:
      pushMatrix();
      fill(103, 103, 103, (easingX/2));
      noStroke();
      ellipse(470, 177, 86, 86);
      popMatrix();
      break;
    case 19:
      pushMatrix();
      fill(74, 165, 167, (easingX/2));
      noStroke();
      ellipse(268, 272, 78, 78);
      popMatrix();
      break;
    case 20:
      pushMatrix();
      noFill();
      stroke(21, 41, 10);
      strokeWeight(2);
      ellipse(528, 321, 65, 65);
      popMatrix();
      break;
    case 21:
      pushMatrix();
      fill(183, 69, 17, (easingY/2));
      stroke(21, 41, 10);
      strokeWeight(4);
      ellipse(317, 310, 72, 72);
      popMatrix();
      break;
    }
  }
}
