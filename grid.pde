class Grid {
  int x, y, r;
  int kind;

  Grid(int kind, int x, int y, int r) {
    this.kind = kind;
    this.x = x;
    this.y = y;
    this.r = r;
  }

  void update() {
  }

  void display() {
    pushMatrix();
    translate(x, y);
    
    switch (this.kind) {
    case 1:
      scale(float(this.r)/700.0);
      noStroke();
      fill(255);
      rect(300, 200, 106, 98);
      fill(187, 89, 75);
      rect(406, 200, 98, 98);
      fill(219, 180, 150);
      rect(301, 295, 108, 108);
      fill(223, 177, 73);
      rect(402, 298, 100, 100);
      //三横线（不平行）
      strokeWeight(6);
      stroke(0);
      strokeCap(SQUARE);
      line(100, 200, 700, 200);
      line(100, 290, 700, 300);
      line(100, 405, 700, 395);
      //三竖线
      line(300, 30, 300, 650);
      line(406, 30, 406, 650);
      line(500, 30, 500, 650);
      break;
    case 2:
      scale(float(this.r)/800.0);
      beginShape();
      stroke(0);
      strokeWeight(2);
      fill(255);
      vertex(250, 300);
      vertex(440, 500);
      vertex(800, 400);
      vertex(650, 140);
      vertex(250, 300);
      endShape();
      line(687.5, 205, 297.5, 350);
      line(725, 270, 345, 400);
      line(762.5, 335, 392.5, 450);
      line(350, 260, 530, 475);
      line(450, 220, 620, 450);
      line(550, 180, 710, 425);

      //左角
      beginShape();
      fill(0);
      vertex(250, 300);
      vertex(350, 260);
      vertex(393, 315);//新
      vertex(297.5, 350);
      vertex(250, 300);
      endShape();

      //左角斜下
      beginShape();
      fill(0);
      vertex(345, 400);
      vertex(440, 368);//新上
      vertex(483, 420);//新下
      vertex(392.5, 450);
      vertex(345, 400);
      endShape();

      //右角斜下
      beginShape();
      fill(0);
      vertex(530, 475);
      vertex(620, 450);
      vertex(578, 394);//新
      vertex(483, 420);
      vertex(530, 475);
      endShape();

      //右角
      beginShape();
      fill(0);
      vertex(800, 400);
      vertex(710, 425);
      vertex(670, 363);//新
      vertex(762.5, 335);
      vertex(800, 400);
      endShape();

      //右角斜上
      beginShape();
      fill(0);
      vertex(687.5, 205);
      vertex(725, 270);
      vertex(630, 300);//新右
      vertex(592, 240);//新左
      vertex(687.5, 205);
      endShape();

      //
      beginShape();
      fill(0);
      vertex(592, 240);
      vertex(550, 180);//左边2点
      vertex(450, 220);//左边3点
      vertex(494, 276);//新
      vertex(592, 240);
      endShape();

      //右角对角
      beginShape();
      fill(0);
      vertex(670, 363);
      vertex(578, 394);
      vertex(538, 335);//新
      vertex(630, 300);
      vertex(670, 363);
      endShape();

      //左角对角
      beginShape();
      fill(0);
      vertex(393, 315);
      vertex(440, 368);
      vertex(538, 335);
      vertex(494, 276);
      vertex(393, 315);
      endShape();

      break;
    }

    popMatrix();
  }
}
