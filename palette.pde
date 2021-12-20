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
    case 0:
      // blue
      this.colorList.add(new Color(color(235, 241, 252)));

      this.colorList.add(new Color(color(31, 77, 199)));
      this.colorList.add(new Color(color(138, 181, 294)));

      this.colorList.add(new Color(color(#328aff)));
      this.colorList.add(new Color(color(#2a67ff)));
      this.colorList.add(new Color(color(#48b5ff)));
      this.colorList.add(new Color(color(#0053c7)));
      this.colorList.add(new Color(color(#4200f5)));
      this.colorList.add(new Color(color(#328aff)));
      this.colorList.add(new Color(color(#2a67ff)));
      this.colorList.add(new Color(color(#48b5ff)));
      this.colorList.add(new Color(color(#0053c7)));
      this.colorList.add(new Color(color(#4200f5)));
      this.colorList.add(new Color(color(#ffbf9d)));
      this.colorList.add(new Color(color(#eec535)));
      this.colorList.add(new Color(color(#d66c9e)));
      this.colorList.add(new Color(color(#ed8bb1)));
      this.colorList.add(new Color(color(#e28728)));
      break;
    case 1:
      // red
      this.colorList.add(new Color(color(252, 246, 246)));

      this.colorList.add(new Color(color(243, 164, 175)));
      this.colorList.add(new Color(color(249, 93, 123)));

      this.colorList.add(new Color(color(238, 91, 85)));
      this.colorList.add(new Color(color(189, 39, 26)));
      this.colorList.add(new Color(color(244, 70, 61)));
      this.colorList.add(new Color(color(203, 99, 114)));
      this.colorList.add(new Color(color(119, 45, 42)));
      this.colorList.add(new Color(color(226, 94, 155)));
      break;
    case 2:
      // flower
      this.colorList.add(new Color(color(245, 249, 255)));

      this.colorList.add(new Color(color(230, 143, 69)));
      this.colorList.add(new Color(color(197, 210, 249)));

      this.colorList.add(new Color(color(#e0f1df)));
      this.colorList.add(new Color(color(#ecc353)));
      this.colorList.add(new Color(color(#edd357)));
      this.colorList.add(new Color(color(#ecc8c4)));
      this.colorList.add(new Color(color(#ffb600)));
      this.colorList.add(new Color(color(#e3744b)));
      this.colorList.add(new Color(color(#7cb787)));
      this.colorList.add(new Color(color(#aacbff)));
      this.colorList.add(new Color(color(#4a87ff)));
      this.colorList.add(new Color(color(#c85b80)));
      break;
    case 3:
      // green
      this.colorList.add(new Color(color(246, 254, 214)));

      this.colorList.add(new Color(color(128, 168, 72, 153)));
      this.colorList.add(new Color(color(124, 183, 135, 204)));

      this.colorList.add(new Color(color(0, 94, 255)));
      this.colorList.add(new Color(color(110, 212, 182)));
      this.colorList.add(new Color(color(140, 198, 2)));
      this.colorList.add(new Color(color(193, 217, 92)));
      this.colorList.add(new Color(color(29, 167, 109)));
      this.colorList.add(new Color(color(124, 183, 135)));
      this.colorList.add(new Color(color(255, 126, 0)));
      this.colorList.add(new Color(color(239, 235, 223)));
      this.colorList.add(new Color(color(229, 100, 94)));
      this.colorList.add(new Color(color(250, 197, 77)));
      break;
    case 4:
      // grey
      this.colorList.add(new Color(color(240, 240, 240)));

      this.colorList.add(new Color(color(#282828)));
      this.colorList.add(new Color(color(#32202B)));

      this.colorList.add(new Color(color(#BF492F)));
      this.colorList.add(new Color(color(#Bf492F)));
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

  color getIndex(int index) {
    return this.colorList.get(index).get();
  }
}
