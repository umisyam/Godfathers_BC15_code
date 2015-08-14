int cell = 15;
float s = 0;

void setup() {
  size(600,600);
  colorMode(HSB);
  noStroke();  
}

void draw() {
  background(0);
  ellipseMode(CORNER);
  
  for(int j=0; j<height/cell; j++) {
    for(int i=0; i<width/cell; i++) {   
      if(sin(j) - cos(i) + tan(s) >= 0) {
        fill(i/2, 255, 255);
      } else {
        fill(50);
      }
      ellipse(i*cell, j*cell, cell, cell);  
    }
  }
  s -= 0.05;
}
