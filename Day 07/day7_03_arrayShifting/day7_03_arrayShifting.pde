int size = 50;
int[] posX = new int[size];
int[] posY = new int[size];

void setup() {
  size(900,500);  
  colorMode(HSB);
  for (int i=0; i<size; i++) {
    posX[i] = 0;
    posY[i] = 0;
  }
}

void draw() {
  background(0);
  //THIS IS SHIFTING THE ARRAY VALUE
  for (int i=0; i<size-1; i++) {
    //posX[0] = posX[1], posX[1] = posX[2], posX[2] = posX[3] and so on
    posX[i] = posX[i+1];
    posY[i] = posY[i+1];
  }
  
  posX[size-1] = mouseX;
  posY[size-1] = mouseY;
  
  for (int i=0; i<size; i++) {
    noStroke();
    fill(255-i*5, 255, 255);
    ellipse(posX[i], posY[i], i, i);  
  }
}





