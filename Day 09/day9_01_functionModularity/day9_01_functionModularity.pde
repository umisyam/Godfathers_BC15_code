float posX = 100;
float posY = 100;
float speedX = 2.5;
float speedY = 2;

void setup() {
  size(400,400);
  smooth();  
  background(255);
}

void draw() {
  fill(255,10);
  rect(0,0,width,height);
  
  move();
  checkEdges();
  drawBall(posX, posY);
  drawBall(posX +50, posY +50);
}

void move() {
  posX = posX + speedX;
  posY = posY + speedY;  
}

void drawBall(float x, float y) {
  fill(200);
  ellipse(x, y, 40, 40);  
}

void checkEdges() {
  if (posX > width || posX < 0) {
    speedX *= -1;  
  } 
  if (posY > height || posY < 0) {
    speedY *= -1;  
  }   
}
