//pallette of colors
color cream        = #FCFBE3;
color lightBrown   = #DDCAAA;
color mediumBrown  = #BC8542;
color darkBrown    = #9F642C;
color darkestBrown = #6E3722;
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
if (dist(100, 100, mouseX, mouseY) < 50) {
stroke(white);
} else {
stroke(darkestBrown);
}
fill(lightBrown);
circle(100, 100, 100);

fill(mediumBrown);
circle(100, 300, 100);

fill(darkBrown);
circle(100, 500, 100);

//indicator
fill(selectedColor);
square(300, 100, 400);

} //end of draw ========================


void mouseReleased() {
  if (dist(100, 100, mouseX, mouseY) < 50) {
    selectedColor = lightBrown;
  }
  
  if (dist(100, 300, mouseX, mouseY) < 50) {
    selectedColor = mediumBrown;
  }
  
  if (dist(100, 500, mouseX, mouseY) < 50) {
    selectedColor = darkBrown;
  }
} // end mouseRelease ===========
