int num = 50;

PVector[] pos = new PVector[num];
PVector[] speed = new PVector[num];
float[] hue = new float[num];
char[] alphabet = new char[num];
float[] alphabetSize = new float[num];

Boolean[] isMoving = new Boolean[num];
float gravity;  //acceleration

void setup() {
  size(600,600);
  colorMode(HSB,360,100,100);
  
  for (int i=0; i<num; i++) {
    hue[i] = random(360);
    pos[i] = new PVector(random(width), random(height-200));
    speed[i] = new PVector(0,0);
    isMoving[i] = false;
    alphabet[i] = (char) int(random(65,90)); 
    alphabetSize[i] = random(30,96);  
  }
  
  gravity = 0.1;
}

void draw() {
  background(0);
  
  for (int i=0; i<num; i++) {
    float distance = dist(mouseX, mouseY, pos[i].x, pos[i].y);
//    println(distance);
    
    noStroke();
    //check distance to mouse
    if(distance < alphabetSize[i]/2 && !isMoving[i]) {
      fill(hue[i], 100, 50);
      isMoving[i] = true;
      speed[i].x = mouseX - pmouseX;
    } else {
      fill(hue[i], 100, 100);
    }
    
    //draw object
    textSize(alphabetSize[i]);
    textAlign(CENTER, CENTER);
    text(alphabet[i], pos[i].x, pos[i].y);
    
    //physics
    if(isMoving[i]) {
      pos[i].add(speed[i]);
      speed[i].y += gravity;  
      
      //if it reaches bottom, do checking & make it bounce
      if (pos[i].y > height - alphabetSize[i]/2) {
        pos[i].y = height - alphabetSize[i]/2;
        speed[i].y *= -0.8;
        
        //it may bounce forever so we need to put a stop
        if (abs(speed[i].y) < 3) {
          speed[i].y = 0;
        }  
      }
    }  
  } // end of for loop
}

void keyPressed() {
  if (key == ' ') {
    for (int i=0; i<num; i++) {
      hue[i] = random(360);
      pos[i] = new PVector(random(width), random(height-200));
      speed[i] = new PVector(0,0);
      isMoving[i] = false;
      alphabet[i] = (char) int(random(65,90)); 
      alphabetSize[i] = random(30,96);  
    }
  }
}
