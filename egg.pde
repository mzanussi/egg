// Parametric equation egg
// http://www.bsidneysmith.com/writings/jotsndoodles/The-Egg-Equations

float i = -PI;
static final float a = 200;

void setup() {
  fullScreen();
  //size(500, 500);
  frameRate(15);
  background(0);
  stroke(255,0,0);
  strokeWeight(2);
}

void draw() {
  //background(0);
  translate(width / 2, height / 2);
  point(x(i), y(i));
  if (i > PI) {
    noLoop();
  } else {
    i = i + .1;
  }
}

float x(float t) {
  return 0.78 * a * cos(t/4) * sin(t);
}

float y(float t) {
  return -a * (cos(t) - 1);
}