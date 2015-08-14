class Bubble{
  String section;
  int nPosts;
  PVector pos;
  float bubbleSize;
  float tempBubble;
  float red, green, textO, opacity;
  
  //constructor
  Bubble(String _section, int _nPosts){
    section = _section;
    nPosts = _nPosts;
    
    //creating bubble size using area formula
    pos = new PVector(random(250, 300), random(250,300));
    float r = sqrt(nPosts/PI);
    bubbleSize = r*myScale;
   
     //random colors
     red = random(0,255);
     green = random(0,255);
  }
  
  void display(){
    update();
    
    //make boolean for mouse hover
    boolean isHovering;
    float distance = dist(mouseX, mouseY, pos.x, pos.y);
    if(distance < bubbleSize/2){
      isHovering = true;
    } else{
      isHovering = false;
    }
    
    if(isHovering){
      opacity = 255;
      textO = 255;
    } else {
      opacity = 150;
      textO = 0;
    }
    
    //bubble display
    fill(red, green, 100, opacity);
    ellipse(pos.x, pos.y, tempBubble, tempBubble); 
    
    //text display
    fill(255, textO);
    textAlign(CENTER);
    text(section, pos.x, pos.y);
    text(nPosts, pos.x, pos.y+15);
  }

  void update(){
    
    //changing bubble size
    if(tempBubble < bubbleSize){
      tempBubble += 0.5;
    }
    
    //checking each bubble against all the other bubbles
    for(Bubble otherBubble : myBubbles) {
      float distance = dist(pos.x, pos.y, otherBubble.pos.x, otherBubble.pos.y);
      
      if (distance < (tempBubble + otherBubble.bubbleSize)/2){
        PVector escape = new PVector(pos.x-otherBubble.pos.x, pos.y-otherBubble.pos.y);
        // println(escape);
        
        //normalize to prevent jumping around
        escape.normalize();
        pos.x = pos.x + escape.x;
        pos.y = pos.y + escape.y;
      }  
      
      //visualize the lines that all the bubbles are traveling on
      stroke(255, 60);
      line(pos.x, pos.y, otherBubble.pos.x, otherBubble.pos.y);
      
  }
  }

}
