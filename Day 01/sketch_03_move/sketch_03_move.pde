int posX = 250;
int posY = 0;

void setup() {
  size(500, 500);
}

void draw() {
  background(255);

  fill(0,255,255);
  ellipse(posX, posY, 100, posY);

  //  posY = posY + 1;
  posY += 1;
}

