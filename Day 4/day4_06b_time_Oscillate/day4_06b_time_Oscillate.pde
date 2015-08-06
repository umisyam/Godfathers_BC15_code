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
  fill(0,10);
  rect(0,0,width,height);
  
  float x = r * sin(frameCount * speed);
//  we dont need a new Y variable because we're not changing its position
  
  fill(0,255,255);
  noStroke();
  ellipse(x+width/2, height/2, 10, 10);
  
}
