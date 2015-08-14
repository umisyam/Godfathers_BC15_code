float r, g, b, a;
float radius;
float x, y;

void setup() {
  size(500,500);  
  background(0);
}

void draw() {
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  
  radius = random(20,50);
  x = random(width);
  y = random(height);
  
  noStroke();
  fill(r,g,b,a);
  ellipse(x,y,radius,radius);
  
  println(x, y);
}
