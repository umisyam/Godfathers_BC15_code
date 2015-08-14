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
  fill(0,10);
  rect(0,0,width,height);
  
  float x = r * sin(theta * 0.05);
  //  we dont need a new Y variable because we're not changing its position
  
  
  fill(0,255,255);
  noStroke();
  ellipse(x+width/2, height/2, 10, 10);
  
  theta += 1;
}
