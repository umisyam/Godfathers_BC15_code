/*
Bootcamp CODE 2015 - InClass Sketch
Created by: Umi Syam
August 4, 2015
*/

boolean button = false;
int x = 100;
int y = 100;
int w = 150;
int h = 75;

void setup() {
  size(640,360); 
   background(0); 
}

void draw() {
  //this makes a button
if ((mouseX > x && mouseX < x+w) &&
      (mouseY > y && mouseY < y+h) && mousePressed) {
     button = true;  
  } else {
    button = false;
  }  
  
  if(button) {
    background(255,0,0);  
  } else {
    background(0);
  }
  
  fill(127);
  rect(x,y,w,h);
}

//if you uncomment this function, it becomes a switch
//void mousePressed() {
//  if ((mouseX > x && mouseX < x+w) &&
//      (mouseY > y && mouseY < y+h)) {
//     button = !button;
//  }   
//}
