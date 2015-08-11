int endY;

void setup() {
  size(200, 200);
  frameRate(15);
  endY = 0;
}

void draw() {
  background(255);
  for (int y=0; y<endY; y+=10) {
    strokeWeight(random(10));
    stroke(random(100));
    line(0, y, width, y);  
  }
  
  endY += 10;
  
  if (endY > height) {
    endY = 0;  
  }
}
