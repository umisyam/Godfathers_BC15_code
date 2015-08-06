PImage bunny;
PFont font;

void setup() {
  size(500,500);  
  background(255);
  bunny = loadImage("bunny.png");
  font = loadFont("Avenir-Black-48.vlw");
  imageMode(CENTER);
}

void draw() {
  float diffX = abs(mouseX-pmouseX);
  float diffY = abs(mouseY-pmouseY);
  float diff = diffX + diffY;
  
  if (diff > 100) {
   diff = 0; 
  }
  
  tint(255,0,0);
  image(bunny, mouseX, mouseY, diff, diff);
  
  fill(0);
  textFont(font, 48);
  text("GRUMPY BUNNY!!", 20, height/2 + 200);
}
