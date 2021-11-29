import processing.sound.*;
Amplitude amp;
AudioIn in;
BeatDetector detector;
Screen screen;
PImage img;

void setup() {
  size(1700, 1000);
  img = loadImage("background.jpg");
  screen = new Screen();
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
  detector = new BeatDetector(this);
  detector.input(in);
}

void draw() {
  drawBackground();
  println(amp.analyze());
  screen.update(detector.isBeat());
  screen.display();
}

void drawBackground() {
  background(255);
}
