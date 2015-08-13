class Player {
  float x, y;
  PVector speed;
  float maxSpeed;
  float shotTimer, shotRate;
  boolean alive;
  PImage playerIcon = loadImage("ship.png");

  Player(float _x, float _y) {
    x = _x;
    y = _y;
    alive = true;
    maxSpeed = 10;
    shotTimer = 0;
    shotRate = 5;
    speed = new PVector(0,0);
  }

  void display() {
    imageMode(CENTER);
    if (alive) {
      image(playerIcon, x, y);
    }
  }

  void update() {
    if(alive) {
      //boundary checking
      if (x < 0) { x = width; }
      if (x > width) { x = 0; }
      
      x += speed.x;
      
      if (keyLeft) {
        speed.x -= 0.5;
      } else if (keyRight) {
        speed.x += 0.5;  
      } else {
        speed.x *= -0.1;  
      }
      
      //if spacebar is pressed/if keyShoot is true, then shoot
      if (keyShoot) {
        if (shotTimer == 0) {
          shoot();
          shotTimer = shotRate;
        }  
      }
      
      //so that the sound plays everytime spacebar is played
      if (shotTimer > 0) {
        shotTimer --;
      } else {
        shotTimer = 0;  
      }  
      
    }
  }

  void shoot() {
    if (alive) {
      soundShoot.play();
      soundShoot.rewind();
      shots.add(new Bullet(x, y, 10));  
    }
  }
}
