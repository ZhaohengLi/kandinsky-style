class Component {
  float easingX, easingY, targetX, targetY;
  boolean isBeat;
  int x, y, r, d, kind;

  Component() {
    this.easingX = 0.0;
    this.easingY = 0.0;
    this.targetX = 0.0;
    this.targetY = 0.0;
    this.isBeat = false;
    this.x = 0;
    this.y = 0;
    this.r = 0;
    this.d = 0;
    this.kind = 0;
  }

  void update(boolean isBeat, float easingX, float easingY, float targetX, float targetY) {
    this.easingX = easingX;
    this.easingY = easingY;
    this.targetX = targetX;
    this.targetY = targetY;
    this.isBeat = isBeat;
  }

  void display() {
  }
}
