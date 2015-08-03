/*int circleX;
int circleY;*/
//float whatever;
//boolean what;

void setup() {
  size(500, 500);
  frameRate(30);
}

void draw() {
  background(255);
  ellipseMode(CENTER);
  
  fill(8,113,102,157);
  ellipse(mouseX,mouseY+125, 60, 120);
  
  strokeWeight(10);
  stroke(0);
  line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+50);
  line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+50);
  
  
}
