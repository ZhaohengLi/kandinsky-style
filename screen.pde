class Screen {
  float easing = 0.05;
  float easingX = 0;
  float easingY = 0;
  float theta = 0.0;
  float targetX = 0.0;
  float targetY = 0.0;

  ArrayList<Component> componentList;

  int curInterval = 0;
  int minInterval = int(frame_rate*0.25);
  int maxInterval = int(frame_rate*1.5);

  Screen() {
    this.componentList = new ArrayList();
    this.componentList.add(new Stripe());
    this.componentList.add(new CD(340, 340, 280));
  }

  void update(boolean isBeat) {
    this.theta += 0.01;
    this.targetX = width*cos(this.theta)*0.9;
    this.targetY = width*sin(this.theta)*0.9;
    this.easingX += (this.targetX - this.easingX) * this.easing;
    this.easingY += (this.targetY - this.easingY) * this.easing;

    this.curInterval += 1;

    if (isBeat || (this.curInterval > this.maxInterval && amp.analyze() > 0.1)) {
      float scale_low = low_power/old_low_power;
      float scale_high = high_power/old_high_power;

      if (this.curInterval > this.minInterval) {
        if (scale_high > scale_low) {
          int dice = (int)random(1, 3);
          switch (dice) {
          case 1:
            this.componentList.add(new Line(0, 0, 0, 100+(int)random(1, 8)));
            this.componentList.add(new Line(0, 0, 0, 300+(int)random(1, 6)));
            break;
          case 2:
            this.componentList.add(new Line(0, 0, 0, 200+(int)random(1, 6)));
            this.componentList.add(new Line(0, 0, 0, 300+(int)random(1, 6)));
            break;
          }
        } else {
          this.componentList.add(new Circle(0, 0, 0, (int)random(1, 25)));
          this.componentList.add(new Circle(0, 0, 0, (int)random(1, 25)));
        }
        if (scale_high > 1.2 && scale_low > 1.3) {
          this.componentList.add(new Point(0, 0, 0, (int)random(1, 6)));
        }
        //int dice = (int)random(1, 9);
        //switch (dice) {
        //case 1:
        //case 2:
        //case 3:
        //case 4:
        //  this.componentList.add(new Circle(0, 0, 0, (int)random(1, 22)));
        //  break;
        //case 5:
        //  this.componentList.add(new Point(0, 0, 0, (int)random(1, 6)));
        //  break;
        //case 6:
        //  this.componentList.add(new Line(0, 0, 0, 100+(int)random(1, 8)));
        //  break;
        //case 7:
        //  this.componentList.add(new Line(0, 0, 0, 200+(int)random(1, 6)));
        //  break;
        //case 8:
        //  this.componentList.add(new Line(0, 0, 0, 300+(int)random(1, 6)));
        //  break;
        //}
        this.curInterval = 0;
      }
    }
    while (this.componentList.size() > 16) {
      this.componentList.remove(2);
    }

    for (Component component : this.componentList) {
      component.update(isBeat, this.easingX, this.easingY, this.targetX, this.targetY);
    }
  }

  void dispaly() {
    background(palette.getBackground());
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

  void clear() {
    this.componentList.clear();
    this.componentList.add(new Stripe());
    this.componentList.add(new CD(340, 340, 300));
  }
}
