PImage newyork;
int[] colorNumbers = new int[360];

void setup() {
  size(1000, 311);
  background(255);
  newyork = loadImage("newyork.jpg");
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  tint(255,126);
  image(newyork,0,0);
  
  for (int y = 0; y < newyork.height; y++) {
    for (int x = 0; x < newyork.width; x++) {
      color c = newyork.get(x,y);
      float h = hue(c); 
      int colorIndex = (int)h;
      colorNumbers[colorIndex] ++;
    }
  }
  
  for (int i = 0; i < colorNumbers.length; i++) {
    float posX = map(i, 0,colorNumbers.length, 0,width);
    float valueHeight = map(colorNumbers[i], 0, max(colorNumbers), 0, height);
    stroke(i,100,100);
    strokeWeight(2);
    line(posX,height,posX,height-valueHeight);
  }
}
