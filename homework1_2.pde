int grid = 150;
float angle;
color startColor;
color endColor;

void setup() {
  size(900, 900, P3D);
  startColor = color(#FF718B);
  endColor = color(#81F6FF);
  noStroke();
}

void draw() {
  background(#FFFB89);
  
  for (int x = 0; x <= width; x += grid) {
    for (int y = 0; y <= height; y += grid) {
      float inter = map(sin(radians(angle)), -1, 1, 0, 1);
      color blendColor = lerpColor(startColor, endColor, inter);
      fill(blendColor);
      
      push();
      translate(x, y);
      rotateX(radians(angle));
      rotateY(-radians(angle));
      rect(0, 0, grid, grid);
      pop();
    }
  }
  angle += 1;
}
