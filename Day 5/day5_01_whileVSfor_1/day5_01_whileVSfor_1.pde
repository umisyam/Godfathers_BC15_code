
void setup() {
  size(500,500); 
  background(0);
}

void draw() {
  float r = width;
//  while(r > 0) {
//    fill(r);
//    ellipse(width/2, height/2, r, r);
//    r = r - 20;
//  }  
 
  for (float r=width; r>0; r-=20) {
    fill(r);
    ellipse(width/2, height/2, r, r);
  }
  
}
