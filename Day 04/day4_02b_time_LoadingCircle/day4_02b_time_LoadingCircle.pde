float r = 100;
float speed = 0.05;

void setup() {
  size(600,600);
  background(0);  
  smooth();
}

void draw() {
  fill(0,10);
  rect(0,0,width,height);
  
  float x = r * cos(frameCount * speed);
  float y = r * sin(frameCount * speed);
  
  fill(0,255,255);
  noStroke();
  ellipse(x + width/2, y + height/2, 20, 20);
  
}
