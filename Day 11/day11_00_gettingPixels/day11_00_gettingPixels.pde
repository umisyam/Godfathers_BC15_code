PImage doge;

void setup() {      
  size(463,330);    
  doge = loadImage("doge.jpg"); 
}

void draw() {       
  image(doge,0,0);
  color posColor = doge.get(mouseX,mouseY);
  //the equivalent to get(x, y) using pixels[] is pixels[y*width+x]
  
  //1-A. the simplest way
//  fill(posColor);
//  ellipse(mouseX,mouseY,50,50);
  
  //1-B. same result, but by splitting up RGB data
  float redVal = red(posColor);
  float greenVal = green(posColor);
  float blueVal = blue(posColor);
  fill(redVal,greenVal,blueVal);  
  ellipse(mouseX,mouseY,50,50);
  
  //2. use brightness to change shape
  float posBrightness = brightness(posColor);
  println(posBrightness);
  ellipse(mouseX,mouseY,posBrightness/2,posBrightness/2); 
  
  //3. making RGB color visualization
  float redRect = map(redVal, 0, 255, 0, width);
  float greenRect = map(greenVal, 0, 255, 0, width);
  float blueRect = map(blueVal, 0, 255, 0, width);
  fill(redVal,0,0);
  rect(0,0,redRect,20);
  fill(0,greenVal,0);
  rect(0,20,greenRect,20);
  fill(0,0,blueVal);
  rect(0,40,blueRect,20); 
  
}
