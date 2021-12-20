import processing.sound.*;

Amplitude amp;
AudioIn in;
BeatDetector detector;
Palette palette;
Screen screen;

FFT fft;
int bands = 512;
float[] spectrum = new float[bands];
float low_power = 0.0;
float high_power = 0.0;
float old_low_power = 0.0;
float old_high_power = 0.0;

int palette_kind = 0;
float scale_factor = 1.0;
int frame_rate = 120;

void setup() {
  palette = new Palette(palette_kind);
  screen = new Screen();

  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);

  detector = new BeatDetector(this);
  detector.input(in);

  fft = new FFT(this, bands);
  fft.input(in);

  size(1020, 1020);
  scale_factor = width/680.0;
  frameRate(frame_rate);
  smooth(64);
}

void draw() {
  fft.analyze(spectrum);
  for (int i=0; i<bands/3; i++) {
    low_power += spectrum[i];
  }
  for (int i=bands/3; i<bands; i++) {
    high_power += spectrum[i];
  }
  pushMatrix();
  scale(scale_factor);
  screen.update(detector.isBeat());
  screen.dispaly();
  popMatrix();
  if (detector.isBeat()) {
    old_low_power = low_power;
    old_high_power = high_power;
    low_power = 0.0;
    high_power = 0.0;
  }
}

void mouseClicked() {
  if (0 < mouseX && mouseX < width/2 && 0 < mouseY && mouseY < height/2) {
    palette_kind = 0;
  }
  if (width/2 < mouseX && mouseX < width && 0 < mouseY && mouseY < height/2) {
    palette_kind = 2;
  }
  if (0 < mouseX && mouseX < width/2 && height/2 < mouseY && mouseY < height) {
    palette_kind = 3;
  }
  if (width/2 < mouseX && mouseX < width && height/2 < mouseY && mouseY < height) {
    palette_kind = 4;
  }
  palette = new Palette(palette_kind);
  screen.clear();
}
