class Stripe extends Component {
  color c1 = palette.getIndex(1);
  color c2 = palette.getIndex(2);
  Stripe() {
  }

  void display() {
    // Yellow Stripe
    pushMatrix();
    fill(random(red(c1)-10, red(c1)+10), random(green(c1)-10, green(c1)+10), random(blue(c1)-10, blue(c1)+10), 120);
    noStroke();
    beginShape();
    vertex(570-(easingY/10), 0);
    vertex(680, 0);
    vertex(60, 700);
    vertex(0, 700);
    vertex(0, 510+(easingX/50));
    endShape();
    popMatrix();
    // Blue Stripe
    pushMatrix();
    fill(random(red(c2)-10, red(c2)+10), random(green(c2)-10, green(c2)+10), random(blue(c2)-10, blue(c2)+10), 120);
    noStroke();
    beginShape();
    vertex(130, 0);
    vertex(240+(easingX/10), 0);
    vertex(680, 400);
    vertex(680, 675+(easingY/10));
    endShape();
    popMatrix();
  }
}
