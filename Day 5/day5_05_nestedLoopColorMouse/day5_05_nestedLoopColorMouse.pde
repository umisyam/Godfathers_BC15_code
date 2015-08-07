void setup() {
  size(500,500);
  colorMode(HSB);  
}

void draw() {
  background(0);
  ellipseMode(CORNER);
  
  int cell = 20;
  for (int y = 0; y<mouseY; y+=cell) {
    for (int x = 0; x<mouseX; x+=cell) {
      fill(x/2, 255, 255);
      ellipse(x,y,cell,cell);
    }    
  }
  
}
