Bubble[] myBubbles;
int myScale;

void setup(){
  size(500, 500);
  myScale = 20;
  myBubbles = new Bubble[14];
  
  String[] originalData = loadStrings("kimonoData.csv");
  
  //split data
  splitData(originalData);
}

void splitData(String[] myArray){
  for(int i=0; i<myArray.length; i++){
    //break into rows
    String myRow = myArray[i];
    //break row into items by columns
    String[] columns = split(myRow, ",");
    // println(columns[1]);
    String[] tempSection = split(columns[1],"\"");
    //trim
    String section = trim(tempSection[1]);
    
    String[] tempPosts = split(columns[3], "\"");
    int nPosts = parseInt(trim(tempPosts[1]));
    println(section, nPosts);
    
    myBubbles[i] = new Bubble(section, nPosts);
    
  }
}

void draw(){
  background(0);
  for (Bubble b : myBubbles){
    b.display();
  }
}
