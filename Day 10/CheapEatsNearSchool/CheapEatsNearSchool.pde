/* ---------------------------------------------------------------------------
 Bootcamp 2014 CODE Final Project
 Umi Fadilah W. Syam
 http://a.parsons.edu/~syamu557/
 MFADT, Parsons The New School for Design
 
 Data Visualization of "Cheap Eats Near School"
 Visualizing all of the cheap eats options near Parsons DT Building
 based on YELP. Data Scraped with https://www.kimonolabs.com/
 --------------------------------------------------------------------------- */
//import processing.pdf.*;
PImage legendR, logo, legend;
PImage bg;
boolean record;
float myScale;
ArrayList <CheapEats> myCheapEats;

void setup() {
  size(1280,720);
  bg = loadImage("small_bg3.png");
  legendR = loadImage("small_Legend2.png");
  logo = loadImage("small_Logo.png");
  legend = loadImage("small_legend.png");

  colorMode(HSB, 360, 100, 100);
// this is the scale of the bubble radius
  myScale = 2.5;
  myCheapEats = new ArrayList <CheapEats>();

  //load the datasets
  String[] wholeData = loadStrings("data/CheapEatsNearSchool.tsv");
  //parse the .TSV file, see below function
  splitData(wholeData);

  smooth();
}

void splitData(String[] myArray) {
  for (int i = 0; i < myArray.length; i++) {
    String myRow = myArray[i];         

//    TSV is Tab Separated Value document, so we split them into columns based on values that are separated by tabs, or \t (as computer understands it)
    String[] columns = split(myRow, "\t");
    
//    breaking down all 7 columns
    String placesName = trim(columns[0]);
    String placesUrl = trim(columns[1]);
    String price = trim(columns[2]);
    int nReviews = parseInt(trim(columns[3]));
    String cuisineCategory = trim(columns[4]);
    String cuisineUrl = trim(columns[5]);
    float radius = parseFloat(trim(columns[6]));

//  instantiating new temporary object of CheapEats class, and add them one by one to myCheapEats ArrayList.
    CheapEats tempGraph = new CheapEats(placesName, placesUrl, price, nReviews, cuisineCategory, cuisineUrl, radius);
    myCheapEats.add(tempGraph);
  }  
  
  //just for debugging purpose, you can turn it off
  debug();
}

void draw() {
  background(bg);
  image(logo, -20, 0);
  image(legendR, 0, height - (int)legendR.height); 
  image(legend, width - (int)legend.width, height - (int)legend.height);

  translate(width/2, height/2);
  
  //uncomment this line if you want to make the orbit spins
//  rotate(frameCount*0.01);

  drawRadius();
  
  //a fancier way to do for loops in an arraylist -- it's getting popular (and easier too)
  for (CheapEats c : myCheapEats) {
    c.display();
  }
}

void drawRadius() {
  for (int i = 0; i < myCheapEats.size (); i++) {
    noFill();
    strokeWeight(3);
    stroke(240);
    
    //changing the scale number will affect the orbit (inner circle) radius    
    ellipse(0, 0, myCheapEats.get(i).radius*1620, myCheapEats.get(i).radius*1620);
//    ellipse(0, 0, myCheapEats.get(i).radius*2000, myCheapEats.get(i).radius*2000);

    //println(myCheapEats.get(i).radius);
  }
}


void mousePressed() {
  for (CheapEats c : myCheapEats) {
    if (c.isHovering()) {
      // when you click on each bubble, it will open up the link on browser
      link(c.placesUrl, "_new");
    }
  }
  record = true;
}

void debug() {  
  for (int i = 0; i < myCheapEats.size (); i++) {
    CheapEats temp = myCheapEats.get(i);
    println(temp.placesName + "\t" + temp.cuisineCategory + "\t" + temp.radius);
  }
}

boolean sketchFullScreen() {
//  return true;
  return false;
}

