Ball b1, b2;

void setup() {
  size(400,400);
  smooth();  
  background(255);
  b1 = new Ball(100, 100, 40);
  b2 = new Ball(300, 300, 10);
}

void draw() {
  fill(255,10);
  rect(0,0,width,height);
  
  b1.move();
  b1.checkEdges();
  b1.drawBall();
  
  b2.move();
  b2.checkEdges();
  b2.drawBall();
}


