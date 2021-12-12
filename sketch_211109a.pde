import processing.sound.*;

Amplitude amp;
AudioIn in;
BeatDetector detector;
Palette palette;
Screen screen;

FFT fft;
int bands = 512;
float[] spectrum = new float[bands];

void setup() {
  palette = new Palette(1);
  screen = new Screen();

  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);

  detector = new BeatDetector(this);
  detector.input(in);

  fft = new FFT(this, bands);
  fft.input(in);

  size(680, 680);
  background(255);
  frameRate(60);
  smooth();
}

void draw() {
  screen.update(detector.isBeat());
  screen.dispaly();
}
