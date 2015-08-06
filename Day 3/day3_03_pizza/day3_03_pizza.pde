PImage pizza;

void setup() {
  size(300,300);
  background(255);
  pizza = loadImage("pizza.png");
  
  imageMode(CENTER);
}

void draw() {
//  background(255);
  int x = int(random(pizza.width));
  int y = int(random(pizza.height));
  
  int loc = x + y*pizza.width;
  loadPixels();
  float r = red(pizza.pixels[loc]);
  float g = green(pizza.pixels[loc]);
  float b = blue(pizza.pixels[loc]);
  
  noStroke();
  fill(r,g,b,100);
  ellipse(x,y,10,10);
  
//  image(pizza, width/2, height/2);

  if(keyPressed) {
    if(key == 's') {
       saveFrame(); 
    }
  }
}


