PImage Mushroom;
boolean MushroomOn; //true or false


color red     = #FA0000;
color green   = #00FF00;
color blue    = #00B9FF;
color yellow  = #FAFF00;
color black   = #000000;



//variable color selection
color selectedColor;



void setup() {
  size(800, 800);
  background(255);
  Mushroom = loadImage("Mushroom.png");
  MushroomOn = true;
}







void draw() {
  
 
  
  //format
 stroke(255); 
 fill(188, 188, 188);
 rect(0, 625, 800, 200);

stroke(0);
fill(red);
 circle( 250, 750, 75);

 fill(255);
  //mushroom button
  tactile(0, 0, 100, 100);
  MushroomOnOff();
  rect(50, 700, 100, 100);
  image(Mushroom, 75, 725, 50, 50);
}





void mouseDragged() {
  if (MushroomOn == false) {
    strokeWeight(5);
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  } else {
    //mushroom drawing
    image(Mushroom, mouseX - 50, mouseY - 50, 100, 100);
  }
}

void mouseReleased() {
//coor buttons
if(dist(250, 750, mouseX, mouseY) < 37.5) {
  
  
  
  //Mushroom button
  if (mouseX > 50 && mouseX < 150 && mouseY > 700 && mouseY < 800) {
    MushroomOn = !MushroomOn;
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
  } else {
    fill(255);
  }
}

void MushroomOnOff() {
  if (MushroomOn == true) {
    stroke(255, 0, 0);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(1);
  }
}
