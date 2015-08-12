PVector pos;
float hue;
char alphabet;
float alphabetSize;

void setup() {
  size(600,600);
  colorMode(HSB,360,100,100);
  hue = random(360);
  
  pos = new PVector(random(width), random(height-100));
  alphabet = (char) int(random(65,90)); 
  alphabetSize = random(30,96);
}

void draw() {
  background(0);
  
  noStroke();
  fill(hue, 100, 100);
  textSize(alphabetSize);
  textAlign(CENTER, CENTER);
  text(alphabet, pos.x, pos.y);
}

void keyPressed() {
  if (key == ' ') {
    pos = new PVector(random(width), random(height-100));
    alphabet = (char) int(random(65,90));  
    alphabetSize = random(30,96);
  }
}
