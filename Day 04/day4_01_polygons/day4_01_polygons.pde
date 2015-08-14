float x1, y1, x2, y2, x3, y3, x4, y4;

void setup() {
  size(500,500);
  frameRate(4);
}

void draw() {
  background(255);  
  x1 = random(width);
  x2 = random(width);
  x3 = random(width);
  x4 = random(width);
  
  y1 = random(height);
  y2 = random(height);
  y3 = random(height);
  y4 = random(height);
  
  strokeWeight(5);
  beginShape();
    vertex(x1, y1);
    vertex(x2, y2);
    vertex(x3, y3);
    vertex(x4, y4);
  endShape(CLOSE);
}
