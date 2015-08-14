Ball[] b = new Ball[50];

void setup() {
  size(400,400);
  smooth();  
  background(255);
  colorMode(HSB);
  
  for (int i=0; i<b.length; i++) {
    b[i] = new Ball(random(width), random(height), random(10, 60), random(255));  
  }
}

void draw() {
  fill(255,50);
  rect(0,0,width,height);
  
  for (int i=0; i<b.length; i++) {
    b[i].move();
    b[i].checkEdges();
    b[i].drawBall();  
  }
}


