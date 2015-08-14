float[] numbers = 
{419.6, 343.2, 322.1, 303.4, 292.9,  275.8,  260.2,  252.0,  234.1,  243.7,  254.4,  256.1};
//Crime rates in NYC from 2002-2012, data was taken from http://www.city-data.com/crime/crime-New-York-New-York.html
 
void setup() {
  size(500,500,P3D);
  background(0);
  colorMode(HSB, 360, 100, 100);
}
 
void draw() {
  background(0);
 
  lights();
  translate(width/2, height/2);
  rotateX(0.5);
  rotateZ(map(mouseX, 0, width, 0, TWO_PI));
  
  for (int i = 0; i < numbers.length; i++) {
    //map the array of numbers to HSB color range
    float c = map(numbers[i], min(numbers), max(numbers), 0, 360);
    fill(360, c, 100);
    
    float w = map(numbers[i], 0, max(numbers), 0, width/2);
    
    pushMatrix();
    translate(150, 0);
    box(20,20,w);
    popMatrix();
    
    rotate(TWO_PI/numbers.length);
  }
}
