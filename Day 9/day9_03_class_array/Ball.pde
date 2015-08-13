class Ball {
  float posX;
  float posY;
  float speedX = 2.5;
  float speedY = 2;  
  float size;
  float hue;
  
  Ball(float _posX, float _posY, float _size, float _hue) {
    posX = _posX;
    posY = _posY;
    size = _size;
    hue = _hue;
  }
  
  void move() {
    posX = posX + speedX;
    posY = posY + speedY;  
  }
  
  void drawBall() {
    noStroke();
    fill(hue, 255, 255);
    ellipse(posX, posY, size, size);  
  }
  
  void checkEdges() {
    if (posX > width || posX < 0) {
      speedX *= -1;  
    } 
    if (posY > height || posY < 0) {
      speedY *= -1;  
    }   
  }
  
}
