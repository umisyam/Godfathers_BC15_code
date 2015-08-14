/*
Bootcamp CODE 2015 - InClass Sketch
Created by: Umi Syam
August 4, 2015
*/

int posX;
int posY;
int speed;

void setup() {
   size(600,600); 
   colorMode(HSB, 360, 100, 100);
   posX = width/2;
   posY = height/2; 
   speed = 4;
   frameRate(30);
}

void draw() {
  background(255);  
  
  fill(0,50);
  noStroke();
  rect(0,0,width/3, height);
  rect(0,0,width*2/3, height);
  
  if (mouseX < width/3) {
//  posX = posX - speed; 
//  a shorter way to write this:    
    posX -= speed;
  } else if (mouseX > width*2/3){
    posX += speed;
  }
  
  if (posX >= width/3 && posX <= width*2/3) {
    fill(random(360), 100, 100);
    ellipse(posX, posY, 80, 80);  
  } else {
    fill(0);
    ellipse(posX, posY, 80,80);
  }
  
  if (posX > width || posX < 0) {
    speed *= -1;  
  }
}




