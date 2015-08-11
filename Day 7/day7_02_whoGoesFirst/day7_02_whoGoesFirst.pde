String[] students = {"Taylor", "Greg", 
"Dora", "Leyla", "Jourdan", "Jasmine", 
"David", "Andrew", "Hadeel", "Jon", "Cat",
"Victoria"};

void setup() {
  size(500,500);  
  frameRate(10);
}

void draw() {
  background(0);
  
  fill(255);
  textSize(random(12,36));
  for (int i=0; i<students.length; i++) {
    text(students[i], random(width), random(height));  
  }
}

void mousePressed() {
  noLoop();
  fill(255,0,0);
  rectMode(CENTER);
  rect(width/2, height/2, width, 50);
  
  fill(255);
  textSize(46);
  textAlign(CENTER, CENTER);
  text(students[int(random(students.length))], width/2, height/2);
}

void keyPressed() {
  loop();  
}

