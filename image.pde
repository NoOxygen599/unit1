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
  MushroomOnOff();
  rect(0, 0, 100, 100);
  image(Mushroom, 25, 25, 50, 50);
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
  //durian button
  if (mouseX > 0 && mouseX < 100 && mouseY > 0 && mouseY < 100) {
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
