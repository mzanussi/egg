// Parametric equation egg
// http://www.bsidneysmith.com/writings/jotsndoodles/The-Egg-Equations

float i = -PI;
static final float a = 225;

void setup() {
  fullScreen();
  //size(500, 500);
  frameRate(10);
  background(0);
  strokeWeight(1);
}

void draw() {
  //background(0);
  translate(width / 2, height / 2);
  
  stroke(255,0,0);
  point(x(i), y(i));
  point(y(i), x(i));
  stroke(0,255,0);
  point(x(i), -y(i));
  point(-y(i), x(i));
  if (i > PI) {
    noLoop();
    //i = 0.0;
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