float[] posX = new float[0];
float[] posY = new float[0];

void setup() {
  size(500,500);  
}

void draw() {
  background(255);
  
  for (int i=0; i<posX.length; i++) {
    strokeWeight(7);  
    point(posX[i], posY[i]);
    
    strokeWeight(1);
    if (i < posX.length-1) {
      line(posX[i], posY[i], posX[i + 1], posY[i + 1]);  
    }
  }
  println(posX.length);
}

void mousePressed() {
  posX = append(posX, mouseX);
  posY = append(posY, mouseY);  
}


