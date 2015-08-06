PImage bunny;
PFont font;

void setup() {
  size(600,600);  
  background(255);
  bunny = loadImage("bunny.png");
  font = loadFont("Avenir-Black-48.vlw");
  colorMode(HSB, 360, 100, 100);
  imageMode(CENTER);
}

void draw() {
//  background(255);
  println(frameCount);
  
  float speed = map(mouseX, 0, width, 0.001, 0.1);
  
  float sinOfTime = sin(frameCount * speed);
  float scale = map(sinOfTime, -1, 1, 100, 500);
  float hue = map(scale, 100, 500, 0, 360);
  
  translate(width/2, height/2);
  tint(hue, 100, 100, random(100));
  rotate(radians(frameCount * speed));
  image(bunny, 0, 0, scale, scale);
  
  
  fill(0, 50);
  textFont(font, 48);
  text("CRAZY BUNNY", width/2 - 200, height/2 -200);
}
