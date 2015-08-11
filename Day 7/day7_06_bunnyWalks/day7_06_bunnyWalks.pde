int maxImages = 8;
PImage[] bunny = new PImage[maxImages];
int imageIndex = 0;
int displacement = 0;
boolean moveRight, moveLeft, standing;

void setup() {
  size(1200,600);
  frameRate(8);
  moveRight = false;
  moveLeft = false;
  standing = true;
  for (int i=0; i<maxImages; i++) {
    bunny[i] = loadImage("bunnySprite" + i + ".png");
  }  
}

void draw() {
  background(255);
  imageMode(CENTER);
  
  translate(width/2 + displacement, height/2);
  imageIndex = (imageIndex + 1) % maxImages;
  
  if (standing) {
    image(bunny[0], 0, 0); 
  } 
  
  if (moveRight) {
    image(bunny[imageIndex], 0, 0);  
    displacement += 20;
  }
  if (moveLeft) {
    scale(-1,1);
    image(bunny[imageIndex], 0, 0);  
    displacement -= 20;
  }
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      moveRight = true; 
      standing = false; 
    } else if (keyCode == LEFT) {
      moveLeft = true;
      standing = false;
    }
  }  
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      if (moveRight) {
        moveRight = false;  
      }
    } else if (keyCode == LEFT) {
      if (moveLeft) {
        moveLeft = false;
      }  
    }
  }  
}


