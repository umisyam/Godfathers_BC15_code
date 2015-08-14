float[] way1;
float[] way2 = new float[100];
float[] way3 = {100, 59, 28, 40, 60}; 

void setup() {
  size(500,500);
  way1 = new float[100];
  
  for (int i=0; i<way2.length; i++) {
    way1[i] = random(0, width);
    way2[i] = random(0, height); 
  }
}

void draw() {
  for (int i=0; i<way2.length; i++) {
    fill(255, random(255), 0);
    ellipse(way1[i], way2[i], i, i);  
  }
  
}

