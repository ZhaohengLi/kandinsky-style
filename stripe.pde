class Stripe extends Component {
  Stripe() {
  }

  void display() {
    // Yellow Stripe
    pushMatrix();
    fill(random(212, 232), random(205, 225), random(2, 32), 120);
    noStroke();
    beginShape();
    vertex(615-(easingY/10), 0);
    vertex(680, 0);
    vertex(60, 700);
    vertex(0, 700);
    vertex(0, 510);
    endShape();
    popMatrix();
    // Blue Stripe
    pushMatrix();
    fill(random(57, 77), random(147, 167), random(118, 138), 120);
    noStroke();
    beginShape();
    vertex(130, 0);
    vertex(240+(easingX/10), 0);
    vertex(680, 400);
    vertex(680, 675);
    endShape();
    popMatrix();
  }
}
