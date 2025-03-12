//pallette of colors
color cream        = #FCFBE3;
color lightBrown   = #0FFAE4;
color mediumBrown  = #2BC963;
color darkBrown    = #F73737;
color darkestBrown = #000000;
color white        = #FFFFFF;

//variables for color selection
color selectedColor;

void setup() {
  size (800, 600);
  strokeWeight(5);
  stroke(darkestBrown);
  selectedColor = darkBrown;
} // setup end ======================


void draw() {
  background(cream);

//buttons
tactile(650, 500, 50);
fill(lightBrown);
circle(650, 500, 100);


tactile(400, 500, 50);
fill(mediumBrown);
circle(400, 500, 100);


tactile(150, 500, 50);
fill(darkBrown);
circle(150, 500, 100);

//indicator
stroke(darkestBrown);
fill(selectedColor);
rect(300, 100, 200, 100);




fill(0, 0, 0);
rect(385, 200, 30, 50);
rect(340, 250, 120, 4);



} //end of draw ========================

void tactile (int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
stroke(white);
} else {
stroke(darkestBrown);
}
} // end tactile =========================



void mouseReleased() {
  if (dist(650, 500, mouseX, mouseY) < 50) {
    selectedColor = lightBrown;
  }
  
  if (dist(400, 500, mouseX, mouseY) < 50) {
    selectedColor = mediumBrown;
  }
  
  if (dist(150, 500, mouseX, mouseY) < 50) {
    selectedColor = darkBrown;
  }
} // end mouseRelease ===========
