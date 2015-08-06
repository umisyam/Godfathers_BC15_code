//MAKE A WAVE
//using polar coordinates, r & theta

float r = 100;
float theta = 0;

void setup() {
  size(500,500);
  background(0);
  smooth();
}

void draw() {
  float x = theta % width;
  float y = r * sin(theta * 0.05);
  
  fill(0,255,255);
  noStroke();
  ellipse(x, y+height/2, 10, 10);
  
  theta += 1;
}
