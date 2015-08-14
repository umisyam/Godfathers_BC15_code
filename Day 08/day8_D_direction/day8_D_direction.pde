PVector pos;
PVector speed;
float hue;
char alphabet;
float alphabetSize;

Boolean hasGravity, isMoving;
float gravity;  //acceleration

void setup() {
  size(600,600);
  colorMode(HSB,360,100,100);
  hue = random(360);
  
  pos = new PVector(random(width), random(height-200));
  speed = new PVector(0,0);
  gravity = 0.05;
  hasGravity = false;
  isMoving = false;
  
  alphabet = (char) int(random(65,90)); 
  alphabetSize = random(30,96);
}

void draw() {
  background(0);
  
  float distance = dist(mouseX, mouseY, pos.x, pos.y);
  println(distance);
  
  noStroke();
  //check distance to mouse
  if(distance < alphabetSize/2) {
    fill(hue, 100, 50);
//    hasGravity = true;
    isMoving = true;
    speed.x = mouseX - pmouseX;
  } else {
    fill(hue, 100, 100);
  }
  
  //draw object
  textSize(alphabetSize);
  textAlign(CENTER, CENTER);
  text(alphabet, pos.x, pos.y);
  
  //physics
  if (hasGravity) {
    pos.y += speed.y;
    speed.y += gravity;    
  }
  if(isMoving) {
    pos.add(speed);
    speed.y += gravity;  
  }
}

void keyPressed() {
  if (key == ' ') {
    pos = new PVector(random(width), random(height-100));
    speed = new PVector(0,0);
    alphabet = (char) int(random(65,90));  
    alphabetSize = random(30,96);
    hue = random(360);
    hasGravity = false;
    isMoving = false;
  }
}
