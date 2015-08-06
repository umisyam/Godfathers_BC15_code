float r = 100;
float theta = 0;

void setup() {
  size(600,600);
  background(0);  
  smooth();
}

void draw() {
  fill(0,10);
  rect(0,0,width,height);
  
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  fill(0,255,255);
  noStroke();
  ellipse(x + width/2, y + height/2, 20, 20);
  
  theta += 0.05;
}
