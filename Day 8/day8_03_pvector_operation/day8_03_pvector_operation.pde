void setup() {
  size(640,360);
}

void draw() {
  background(255);
  //Two PVectors, one for the mouse location and 
  //one for the center of the window
  PVector mouse  = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  
  //subtraction
  mouse.sub(center);
  //multiplication
//  mouse.mult(0.5);
  
  //draw the magnitude
  float m = mouse.mag();
  fill(0);
  rect(0,0,m,10);
  
  //normalize a vector
//  mouse.normalize();
//  mouse.mult(50);
  
  // Draw a line to represent the vector.
  strokeWeight(2);
  translate(width/2,height/2);
  line(0,0,mouse.x,mouse.y);
}
