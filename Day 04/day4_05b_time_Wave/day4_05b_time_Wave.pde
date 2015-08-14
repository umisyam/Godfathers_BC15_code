//MAKE A WAVE
//using sin(frameCount);

float r = 100;
float speed = 0.05;

void setup() {
  size(500,500);
  background(0);
  smooth();
}

void draw() {
  float x = frameCount % width;
  println(x);
  float y = r * sin(frameCount * speed);
  
  fill(0,255,255);
  noStroke();
  ellipse(x, y+height/2, 10, 10);
  
}
