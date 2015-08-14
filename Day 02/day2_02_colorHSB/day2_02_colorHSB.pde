/*
Bootcamp CODE 2015 - InClass Sketch
Created by: Umi Syam
August 4, 2015
*/

//learn to use 'color' datatype to save colors
color circleColor;
//this variable will change the Hue value
int circleColorH;

void setup() {
  size(600,600);  
  background(255);
  colorMode(HSB, 360, 100, 100);
  
  circleColorH = 0;
  circleColor = color(circleColorH, 100, 100);
}

void draw() {
  float diffX = abs(mouseX-pmouseX);
  float diffY = abs(mouseY-pmouseY);
  float diff = diffX + diffY;
  
  circleColor = color(circleColorH, diff, diff);
  

  fill(circleColor);
//  ellipse(width/2, height/2, 200, 200);
//  ellipse(width/2, height/2, 100, 100);

//  noStroke();  
  strokeWeight(diff);
  stroke(180,100,100,40);
  line(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, diff, diff);
  
  constrain(circleColorH, 0, 360);
  circleColorH = (circleColorH + 1) % 360;
  circleColorH++;
//  circleColorH += 1;
//  circleColorH = circleColorH + 1;
  println(circleColorH);
  
}






