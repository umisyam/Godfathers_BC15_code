// bootcamp 2015 Day 1 
// created by Lucy Bonner
// tips: it's easier to use Tweak mode if you're going to draw characters with precision.

color lightBrown, darkBrown, blue;

int middleX, middleY;

void setup() {
  size(500, 500);
  
  middleX = width/2;
  middleY = height/2;
  
  lightBrown = color(113, 70, 50);
  darkBrown = color(53, 34, 34);
  blue = color(149, 212, 213);
  
  smooth();
}

void draw() {
  background(blue);
  
  // 7. frame
  rectMode(CENTER);
  stroke(darkBrown);
  strokeWeight(5);
  noFill();
  rect(middleX, middleY, 425, 425);
  
  // 1.head
  noStroke();
  fill(255);
  ellipse(middleX, middleY, 200, 200); //head
  ellipse(middleX, middleY+60, 150, 150); //muzzle
  
  // 4.EYE SPOT! NOSE SPOT! (ellipses)
  fill(lightBrown);
  ellipse(middleX-55, middleY-20, 75, 50); //eye spot
  ellipse(middleX, middleY+60, 75, 110); //nose spot
  
  // 2.draw his eyes out of circles
  fill(darkBrown); //dark brown
  ellipse(middleX-45, middleY-20, 20, 20); //left eye
  ellipse(middleX+45, middleY-20, 20, 20); //right eye
  
  // 3.draw his nose: also a circle! 
  ellipse(middleX, middleY+40, 50, 50);
  
  // 5. draw ears out of triangles
  fill(lightBrown);
  triangle(middleX-92, middleY-40, middleX-40, middleY-92, middleX-150, middleY-100); // left ear
  triangle(middleX+92, middleY-40, middleX+40, middleY-92, middleX+150, middleY-100); // right ear
  
  // 6.draw the folded-over part of his ears
  triangle(middleX-150, middleY-100, middleX-80, middleY-94, middleX-170, middleY-60); //left ear fold
  triangle(middleX+150, middleY-100, middleX+80, middleY-94, middleX+170, middleY-60); //right ear fold
}
