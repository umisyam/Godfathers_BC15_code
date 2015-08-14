/*
Bootcamp CODE 2015 - InClass Sketch
Created by: Umi Syam
August 4, 2015
*/

void setup() {
 size(500,500);
 background(255,0,0); 
 rectMode(CENTER);
}

void draw() {
  float myColorRange = map(mouseX, 0, width, 0, 255);
  
  fill(myColorRange);
  rect(width/2, height/2, 200, 150);
}
