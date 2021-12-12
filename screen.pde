class Screen {
  float easing = 0.05;
  float easingX = 0;
  float easingY = 0;
  float theta = 0.0;
  float targetX = 0.0;
  float targetY = 0.0;

  ArrayList<Component> componentList;

  int curInterval = 0;
  int minInterval = 60;

  Screen() {
    this.componentList = new ArrayList();
    this.componentList.add(new Stripe());
    this.componentList.add(new CD(340, 340, 300));
  }

  void update(boolean isBeat) {
    this.theta += 0.02;
    this.targetX = 800*cos(this.theta);
    this.targetY = 800*sin(this.theta);
    this.easingX += (this.targetX - this.easingX) * this.easing;
    this.easingY += (this.targetY - this.easingY) * this.easing;

    this.curInterval += 1;

    if (isBeat) {
      if (this.curInterval > this.minInterval) {
        int dice = (int)random(1, 9);
        switch (dice) {
        case 1:
        case 2:
        case 3:
        case 4:
          this.componentList.add(new Circle(0, 0, 0, (int)random(1, 22)));
          break;
        case 5:
          this.componentList.add(new Point(0, 0, 0, (int)random(1, 6)));
          break;
        case 6:
          this.componentList.add(new Line(0, 0, 0, 100+(int)random(1, 8)));
          break;
        case 7:
          this.componentList.add(new Line(0, 0, 0, 200+(int)random(1, 6)));
          break;
        case 8:
          this.componentList.add(new Line(0, 0, 0, 300+(int)random(1, 6)));
          break;
        }
        this.curInterval = 0;
      }
    }
    if (this.componentList.size() > 44) {
      this.componentList.remove(2);
    }

    for (Component component : this.componentList) {
      component.update(isBeat, this.easingX, this.easingY, this.targetX, this.targetY);
    }
  }

  void dispaly() {
    background(245, 250, 225);
    for (Component component : this.componentList) {
      component.display();
    }
  }

  void drawAll() {
    for (int i=1; i<=21; i++) {
      this.componentList.add(new Circle(0, 0, 0, i));
    }
    for (int i=1; i<=5; i++) {
      this.componentList.add(new Point(0, 0, 0, i));
    }
    for (int i=1; i<=7; i++) {
      this.componentList.add(new Line(0, 0, 0, 100+i));
    }
    for (int i=1; i<=5; i++) {
      this.componentList.add(new Line(0, 0, 0, 200+i));
    }
    for (int i=1; i<=5; i++) {
      this.componentList.add(new Line(0, 0, 0, 300+i));
    }
  }
}
