class Line extends Component {
  Line(int x, int y, int d, int kind) {
    this.x = x;
    this.y = y;
    this.d = d;
    this.kind = kind;
  }

  void display() {
    switch (this.kind) {
    case 101:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(2);
      line(148, 175+(targetX/18), 565, 228);
      popMatrix();
      break;
    case 102:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(3);
      line(85, 334-(targetY/14), 562, 435-(targetX/20));
      popMatrix();
      break;
    case 103:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(3);
      line(505-(targetY/20), 496, 507, 210);
      popMatrix();
      break;
    case 104:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(2);
      line(121, 369-(targetX/5), 478, 558-(targetX/25));
      popMatrix();
      break;
    case 105:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(3);
      line(221+(targetX/10), 555, 478-(targetX/20), 105);
      popMatrix();
      break;
    case 106:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(2);
      line(154+(targetY/10), 425, 380, 137);
      popMatrix();
      break;
    case 107:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(2);
      //line(201, 129,560,390);
      line(201+(targetX/10), 129, 552, 375);
      popMatrix();
      break;
    case 201:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(2);
      line(420, 560, 495, 127);
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(408, 551, 481, 128);
      popMatrix();
      break;
    case 202:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(193, 550, 438, 175);
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(175, 545, 438, 175);
      popMatrix();
      break;
    case 203:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(85, 277, 550, 412);
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(88, 265, 550, 395);
      popMatrix();
      break;
    case 204:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(114, 365, 323, 183);
      popMatrix();
      break;
    case 205:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(124, 403, 542, 452);
      popMatrix();
      break;
    case 301:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(357, 125, 388, random(160, 165));
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(345, 135, 385, 177);
      popMatrix();
      break;
    case 302:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(2);
      line(500, 236, 527, 234);
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(2);
      line(500, 247, 538, random(244, 250));
      popMatrix();
      break;
    case 303:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(393, 532, 464, random(493, 497));
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(397, random(540, 545), 467, 506);
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(400, random(550, 557), 470, 519);
      popMatrix();
      break;
    case 304:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(165, 515, 295, random(480, 495));
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(194, random(477, 481), 290, 537);
      popMatrix();
      break;
    case 305:
      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(random(80, 90), 303, 120, 251);
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(98, 297, 132, 253);
      popMatrix();

      pushMatrix();
      stroke(49, 36, 4);
      strokeWeight(1);
      line(161, 321, 174, 270);
      popMatrix();
      break;
    }
  }
}
