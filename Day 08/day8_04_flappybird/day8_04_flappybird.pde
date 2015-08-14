PVector pos = new PVector(0,0);
PVector speed = new PVector(0,0);
float gravity = 0.98;

void setup() {
  size(500,500); 
  
}

void draw() {
  background(0);
//  pos.x += speed.x;
//  pos.y += speed.y;
  pos.add(speed);
  
//  speed.add(gravity);
  speed.x += 0.001;
  speed.y += gravity;
  
  println(speed);
  if (pos.y > height) {
    pos.y = height;  
  }
  if (pos.x > width) {
    pos.x = 0;  
  }
  ellipse(pos.x, pos.y, 50, 50);
}

void mousePressed() {
  speed.y = -15;  
}
