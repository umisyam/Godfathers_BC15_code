void setup() {
  size(500,500);  
}

void draw() {
  background(0);
  noStroke();
//  int i = 0;
//  while (i < width) {
//    float distance = abs(mouseX - i);
//    fill(distance);
//    rect(i, 0, 10, height);  
//    
//    i += 10;
//  }
  
  for(int i=0; i<width; i+=10) {
    float distance = abs(mouseX - i);
    fill(distance);
    rect(i, 0, 10, height);
  }
  
}

