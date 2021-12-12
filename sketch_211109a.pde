import processing.sound.*;

Amplitude amp;
AudioIn in;
BeatDetector detector;
Palette palette;
Screen screen;


void setup() {
  palette = new Palette(1);
  screen = new Screen();

  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);

  detector = new BeatDetector(this);
  detector.input(in);

  size(680, 700);
  background(255);
  frameRate(60);
  smooth();
}

void draw() {
  //background(palette.getBackground());

  screen.update(detector.isBeat());
  screen.dispaly();
}
