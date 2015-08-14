import ddf.minim.*;
Minim minim;
AudioPlayer soundShoot;

Player ship;
ArrayList<Bullet> shots;
ArrayList<Alien> aliens;

Boolean keyLeft = false;
Boolean keyRight = false;
Boolean keyShoot = false;
int score;

void setup() {
  size(800, 600);
  frameRate(30); 
  background(0); 
  ship = new Player(width/2, height*0.85);
  shots = new ArrayList<Bullet>();
  aliens = new ArrayList<Alien>();
  
  minim = new Minim(this);
  soundShoot = minim.loadFile("laser.wav");
  
  restart();
}

void restart() {
  score = 0;
  aliens.clear();
  aliens.add(new Alien(random(width), 0, random(0.5,2)));
  aliens.add(new Alien(random(width), 0, random(0.5,2)));
  aliens.add(new Alien(random(width), 0, random(0.5,2)));
  
  ship.x = width/2;
  ship.y = height*0.9;
  ship.alive = true; 
}

void draw() {
  //making the trailing effect background
  fill(0,90);
  rect(0,0,width,height);
  
  //draw the score text
  fill(255,255,0);
  textSize(24);
  String scoreText = "SCORE: " + score;
  text(scoreText, 30, 40);
  
  //draw the player
  ship.display();
  ship.update();
  
  //initialize the bullets
  for (int i=0; i<shots.size(); i++) {
    Bullet b = shots.get(i);
    b.update();
    b.display();
    b.dissipate(i); 
  }
  
  //now, as the score increases, 
  int maxAliens = score + 1;  //we'll add more aliens!
  int newAlienTiming = 50 - score;  //and the faster they spawn!
  float alienSpeed = random(score/4 +0.5, score/4 +2);  //and the faster they go!
  
  if ((aliens.size() < maxAliens) && (frameCount % newAlienTiming == 0)) {
    aliens.add(new Alien(random(width), 0, alienSpeed));  
  }
  
  
  //initialize the aliens
  for (int i=0; i<aliens.size(); i++) {
    Alien a = aliens.get(i);
    a.update();
    a.display();
    
    //check if the aliens reach bottom of the screen, remove from arraylist
    if (a.y > height + a.alienSize/2) {
      aliens.remove(i);  
    }
    
    //check collision with the bullet
    for (int j=0; j<shots.size(); j++) {
      Bullet bul = shots.get(j);
      a.checkCollisionWithBullet(bul, a, i, j);  
    }
    
    //check collision with player
    if (ship.alive) { a.checkCollisionWithPlayer(ship, a); }
    //if our ship hits the alien, reset everything
    if (ship.alive == false) { restart(); }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) { keyRight = true; }
    if (keyCode == LEFT) { keyLeft = true; }
  }
  if (key == ' ') { keyShoot = true; }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == RIGHT) { keyRight = false; }
    if (keyCode == LEFT) { keyLeft = false; }
  }
  if (key == ' ') { keyShoot = false; }
}


