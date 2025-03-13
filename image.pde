PImage Mushroom;
boolean MushroomOn; //true or false

void setup() {
  size(600, 600);
  background(255);
  Mushroom = loadImage("Mushroom.png");
  MushroomOn = true;
}
  
  
  void draw() {
    fill(255);
    
    //mushroom button
    tactile(0, 0, 100, 100);
    strokeWeight(1);
    rect(0, 0, 100, 100);
   
    image(Mushroom, 25, 25, 50, 50);

  }
  
  
  
  
  
  void mouseDragged() {
    if(Mushroom == false) {
    strokeWeight(5);
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    //mushroom drawing
    image(Mushroom, mouseX, mouseY, 100, 100);
  }
  }
  
  void mouseRelease() {
    
  }
  
  void tactile(int x, int y, int w, int h) {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
    } else {
      fill(255);
    }
  }
  
  void showOnOff() {
    
  }
