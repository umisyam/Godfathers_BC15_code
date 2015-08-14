int num = 10;

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
      
      //if it reaches the wall -- boundary checking
      if (pos[i].x < 0) {
        pos[i].x = 0;
        speed[i].x *= -0.8;  
      } else if (pos[i].x > width) {
        pos[i].x = width;
        speed[i].x *= -0.8;  //this is also called 'DAMPENING'  
      }
      
      //if it reaches bottom, do checking & make it bounce
      if (pos[i].y > height - alphabetSize[i]/2) {
        pos[i].y = height - alphabetSize[i]/2;
        speed[i].y *= -0.8;
        
        //it may bounce forever so we need to put a stop
        if (abs(speed[i].y) < 3) {
          speed[i].y = 0;
        }  
      }
      
      //nested loop to detect collision with any other object
      for (int j=0; j<num; j++) {
        //first check if it's colliding with itself!
        if (i != j) { 
          if (dist(pos[i].x, pos[i].y, pos[j].x, pos[j].y) < 
          (alphabetSize[i] + alphabetSize[j])/2 ) {
              pos[i].sub(speed[i]);
//              pos[i].x -= speed[i].x*2;
//              pos[i].y -= speed[i].y*2;
              speed[i].mult(-0.8);
              
              pos[j].sub(speed[j]);
//              pos[j].x -= speed[j].x*2;
//              pos[j].y -= speed[j].y*2;
              speed[j].mult(-0.8);
          }  
        }    
      } //end of for loop - 2nd one
      
    }  // end of if(isMoving)
  } // end of for loop - 1st one
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
