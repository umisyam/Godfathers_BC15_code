float speed = 2;
int size = 500;
float[] x = new float[size];
float[] y = new float[size];

void setup() {
  size(600,600);  
  background(255);
  
  noStroke();
  frameRate(30);
  for (int i=0; i<size; i++) {
    x[i] = random(width);
    y[i] = random(height);  
  }
}

void draw() {
  fill(random(255),80);
  for(int i=0; i<size; i++) {
    x[i] += random(-5,5) * speed;
    y[i] += random(-5,5) * speed;    
    
    if (mousePressed) {
      fill(255,50);
      ellipse(x[i], y[i], 10, 10);
    } else {
      ellipse(x[i], y[i], 5, 5);
    }
  }
}

