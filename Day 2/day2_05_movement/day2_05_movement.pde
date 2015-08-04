/*
Bootcamp CODE 2015 - InClass Sketch
Created by: Umi Syam
August 4, 2015
*/

int angle = 300;
int size = 50;
float posX = 0;
int hue = 50;
int trans1 = 0;
int trans2 = 0;

void setup() {
  size(500,500);
  background(0); 
  frameRate(60);
  smooth();
  rectMode(CENTER); 
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  float w = map(mouseX, 0, width, 10, 50);
  float h = map(mouseY, 0, height, 10, 50);
  
  posX += 5;
  angle -= 2;
  size -= 1;
  hue += 1;
  trans1 += 1;
  
  if (trans1 > width) {
    trans1 = 0;
    trans2 += 50; 
  }
  if (posX > width) {
    posX = 0;
  }
  if (angle < 1) {
     angle = 300; 
  }
  if (hue > 360) {
     hue = 0; 
  }
  if (size < 1) {
     size = 300; 
  }
  
//  noStroke();
  stroke(random(hue),random(hue),random(100));
  fill(hue,100,100);
  translate(trans1, trans2);
  rotate(radians(posX));
// try uncommenting out and see what happens  
//  rotate(radians(angle));
  rect(0,0,w,h);

  if (keyPressed) {
    if (key == 's') {
      saveFrame();
      println("screenshot captured");
    }
  }
}
