PImage img;

int pixelX = 0;
int pixelY = 0;

void setup() { 
  size(600,600); 
  img = loadImage("li_kyle-300x300.jpg"); 
  noSmooth(); 
} 

void draw() {
  //background(0);
//  image(img,0,0,600,600);
  
  //stepwise way
  color myPixelColor = img.get(pixelX,pixelY);
  float brightness = brightness(myPixelColor); 
  
  fill(myPixelColor);
  noStroke();
  rectMode(CENTER);
  rect(pixelX*2, pixelY*2, 5,brightness*0.1);
  
  pixelX += 5;
  
  if (pixelX > img.width && pixelY < img.height) {
    pixelX = 0;
    pixelY += 5;
  }
 
} 
