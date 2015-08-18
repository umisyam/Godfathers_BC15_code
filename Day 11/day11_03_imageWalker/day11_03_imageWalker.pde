PImage doge;

int xpos = width/2; 
int ypos = height/2; 
float xchange = 0; 
float ychange = 0; 
color posColor;

void setup() {      
  size(463,330);    
  doge = loadImage("doge.jpg"); 
  
}

void draw() {       
  if (xpos < 0) {
    xpos *= -1;  
  } else if (ypos < 0) {
    ypos *= -1;
  }
  
  xchange = int(random(-15,15));
  ychange = int(random(-15,15));
  xpos += xchange;
  ypos += ychange;
  posColor = doge.get(xpos,ypos);
  fill(posColor);
  noStroke();
  ellipse(xpos,ypos,15,15);
  
  println(xpos,ypos);
}
