PVector pos = new PVector(100, 100);
PVector speed = new PVector(2.5, 2);

void setup() {
  size(400,400);
  smooth();  
  background(255);
}

void draw() {
  fill(255,10);
  rect(0,0,width,height);
  
  pos.add(speed);
  
  if (pos.x > width || pos.x < 0) {
    speed.x *= -1;  
  } 
  if (pos.y > height || pos.y < 0) {
    speed.y *= -1;  
  } 
  
  fill(200);
  ellipse(pos.x, pos.y, 40, 40);
}
