int min = 15;
ArrayList<Rectangle> rects;
color[] colors = { 
  color(249,250,96), 
  color(255,186,10), 
  color(131,231,255) 
};

void setup() {
  size(800, 800);
  rectMode(CENTER);
  frameRate(30); 
  rects = new ArrayList<Rectangle>();
  divideRect(0, 0, width, height);
}

void draw() {
  background(#FC94A2);
  for (Rectangle r : rects) {
    float amt = map(sin(r.x * 0.01 + frameCount * 0.1) * cos(r.x * 0.01), -1, 1, 0, 1);
    float w = lerp(0, r.w, amt);
    float h = lerp(0, r.h, amt);
    noStroke();
    fill(r.c);
    rect(r.x, r.y, w, h);
  }
}

void divideRect(float x, float y, float w, float h) {
  int rnd = int(random(2));
  int cc = 5;
  float w1 = int(random(1, cc)) * (w / cc);
  float w2 = w - w1;
  float h1 = int(random(1, cc)) * (h / cc);
  float h2 = h - h1;

  if (w1 > min && w2 > min && h1 > min && h2 > min) {
    if (rnd == 0) {
      divideRect(x, y, w1, h);
      divideRect(x + w1, y, w2, h);
    }
    if (rnd == 1) {
      divideRect(x, y, w, h1);
      divideRect(x, y + h1, w, h2);
    }
  } else {
    rects.add(new Rectangle(x + w / 2, y + h / 2, w, h, randomColor()));
  }
}

color randomColor() {
  return colors[int(random(colors.length))];
}

class Rectangle {
  float x;
  float y;
  float w;
  float h;
  color c;

  Rectangle(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  }
}
