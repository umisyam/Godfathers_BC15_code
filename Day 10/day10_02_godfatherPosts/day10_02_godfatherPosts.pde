//Declaring arrays
//Initializing with a size 0
//Because we don' know yet how many elements we're gonna load
String[] lastNames = new String[0];
String[] firstNames = new String[0];
String[] email = new String[0];
int[] blogPosts = new int[0];
int[] ids = new int[0];
float rotation;
float rotationIncrement;

void setup(){
  size(1000, 800);
  frameRate(30);
  colorMode(HSB);
  Table students = loadTable("godfathers.tsv", "header");
  
  rotation = 0;
  rotationIncrement = .001;  
  
  //Looping through the table's lines
  for(int i = 0; i < students.getRowCount(); i++){
    
    //For each line, create a TableRow object
    TableRow myRow = students.getRow(i);
    
    //Appending each one of the columns to one of our arrays
    lastNames = append(lastNames, myRow.getString("lastName"));
    firstNames = append(firstNames, myRow.getString("firstName"));
    email = append(email, myRow.getString("email"));
    blogPosts = append(blogPosts, myRow.getInt("blogPosts"));
    ids = append(ids, myRow.getInt("id")); 
  }
}

void draw(){
  background(0);
  textAlign(LEFT);
  
  translate(width/2, height/2);
  float angle = 360/(lastNames.length);
  angle += rotation;
  
  for(int i = 0; i < ids.length; i++){
    float hue = map(ids[i], 0, 999, 0, 255);
    float saturation = map(blogPosts[i], 0, 12, 0, 255);
    fill  (hue, saturation, 255);
    rotate(angle + (blogPosts[i] * .05));
    
    textSize(blogPosts[i]*2);
    text(firstNames[i] + " " + lastNames[i], blogPosts[i] * 5, -10);
    rect(0, 0, blogPosts[i]*30, 4);
  }
  rotation += rotationIncrement; 
}
