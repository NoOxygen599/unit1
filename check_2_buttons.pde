//pallette
color darkPurple = #230F2B;
color pink       = #F21D41;
color lightGreen = #EBEBBC;
color medGreen   = #BCE3C5;
color darkGreen  = #82B3AE;

int toggle;

void setup() {
  size (800, 600);
  strokeWeight(5);
  textSize(30); 
  
  toggle = 1;
}

void draw() {
  background(darkPurple);
  
  
  fill(darkGreen);
  stroke(lightGreen);
  rect(200, 400, 150, 200);
   
   if (toggle > 0) {
     guidelines();
  }
}

void mouseReleased() {
  if (mouseX > 200 && mouseX < 350 && mouseY > 400 && mouseY < 600) {
    toggle = toggle * -1;
  }
}

void guidelines(){
  fill(pink);
  stroke(pink);
  line (0, mouseY, width, mouseY);
  line(mouseX, 0, mouseX, height);
} 
  
  
  
  
