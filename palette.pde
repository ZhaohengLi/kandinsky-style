class Color {
  color c;
  Color(color c) {
    this.c = c;
  }
  color get() {
    return this.c;
  }
}


class Palette {
  int kind;
  ArrayList<Color> colorList;
  int last = 0;

  Palette(int kind) {
    this.kind = kind;
    this.colorList = new ArrayList();
    switch(this.kind) {
    case 1:
      this.colorList.add(new Color(color(255, 252, 230)));
      this.colorList.add(new Color(color(0)));
      this.colorList.add(new Color(color(255)));
      this.colorList.add(new Color(color(51, 59, 48)));
      this.colorList.add(new Color(color(108, 105, 111)));
      this.colorList.add(new Color(color(83, 108, 205)));
      this.colorList.add(new Color(color(177, 182, 186)));
      this.colorList.add(new Color(color(250, 214, 90)));
      this.colorList.add(new Color(color(170, 204, 215)));
      this.colorList.add(new Color(color(193, 184, 174)));
      break;
    case 2:
      this.colorList.add(new Color(color(250, 242, 240)));
      this.colorList.add(new Color(color(0)));
      this.colorList.add(new Color(color(255)));
      this.colorList.add(new Color(color(249, 94, 78)));
      this.colorList.add(new Color(color(255, 198, 159)));
      this.colorList.add(new Color(color(255, 182, 36)));
      this.colorList.add(new Color(color(242, 255, 141)));
      this.colorList.add(new Color(color(191, 185, 155)));
      this.colorList.add(new Color(color(217, 95, 105)));
      this.colorList.add(new Color(color(242, 242, 242)));
      break;
    }
  }

  color getBackground() {
    return this.colorList.get(0).get();
  }
  
  color getRandom() {
    int random;
    while (true) {
      random = int(random(3, this.colorList.size()));
      if (random != this.last) {
        break;
      }
    }
    this.last = random;
    return this.colorList.get(random).get();
  }
}
