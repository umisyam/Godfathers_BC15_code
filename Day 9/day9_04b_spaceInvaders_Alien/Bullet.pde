class Bullet {
  float x, y;
  float speed;
  int lifespan, runtime;
  
  Bullet(float _x, float _y, float _speed) {
    x = _x;
    y = _y;
    speed = _speed;
    lifespan = 100;
    runtime = 0;  
  }
  
  void display() {
    pushMatrix();
    translate(x,y);
    fill(255,0,0);
    ellipse(0,0,5,5);
    popMatrix();  
  }
  
  void update() {
    y -= speed; //this is minus bcos shots go up
  }

  void dissipate(int index) {
    runtime ++;
    if (runtime > lifespan) {
      //remove bullets from the ArrayList
      shots.remove(index);
    }  
  }
}
