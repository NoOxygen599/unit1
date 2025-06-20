PImage Mushroom;
boolean MushroomOn; //true or false

color backgroundcolor = #ffffff;
color outline = #CBB558;
color red     = #FA0000;
color green   = #00FF00;
color blue    = #00B9FF;
color yellow  = #FAFF00;
color black   = #000000;
color lightgray = #BCBCBC;
color purple = #9705FA;

float size;

//variable color selection
color selectedColor;

String buttonSelected = "mushroom";

//slider
float sliderX;

void setup() {
  size(800, 800);
  background(backgroundcolor);
  Mushroom = loadImage("c:/Temp/onepunch.jpg");
  MushroomOn = true;
  
pushMatrix();
strokeWeight(5);
fill(red);
sliderX = 505;
popMatrix();



}

void draw() {
  drawControlPanel();
}

void drawControlPanel(){
  // bottom bar
  stroke(black);
  strokeWeight(6);
  fill(lightgray);
  rect(3, 621, 793, 175);

  // red circle button
  stroke( buttonSelected == "red" ? outline : black );
  strokeWeight( buttonSelected == "red" ? 6 : 3 );
  fill(red);
  circle( 250, 670, 40);
  
  //yellow button
  stroke( buttonSelected == "yellow" ? outline : black );
  strokeWeight( buttonSelected == "yellow" ? 6 : 3 );
  fill(yellow);
  circle( 300, 670, 40);
  
  //green button
  stroke( buttonSelected == "green" ? outline : black );
  strokeWeight( buttonSelected == "green" ? 6 : 3 );
  fill(green);
  circle( 350, 670, 40);
  
  //blue button
   stroke( buttonSelected == "blue" ? outline : black );
  strokeWeight( buttonSelected == "blue" ? 6 : 3 );
  fill(blue);
  circle( 250, 725, 40);
   
  //purple button
   stroke( buttonSelected == "purple" ? outline : black );
  strokeWeight( buttonSelected == "purple" ? 6 : 3 );
  fill(purple);
  circle( 300, 725, 40);
  
  //black button
   stroke( buttonSelected == "black" ? outline : black );
  strokeWeight( buttonSelected == "black" ? 6 : 3 );
  fill(black);
  circle( 350, 725, 40);
  
  //all white
 
  rect(400, 730, 70, 30);
  fill(0);
  
  
 
  
  //mushroom button
  //tactile(0, 0, 100, 100);
  stroke( buttonSelected == "mushroom" ? outline : black );
  strokeWeight( buttonSelected == "mushroom" ? 8 : 3 );
  rect(75, 670, 80, 80);
  image(Mushroom, 76, 671, 78, 78);  
  

  //slider
  
  strokeWeight(3);
  stroke(black);
  line (500, 700, 750, 700);
  fill(red);
  circle(sliderX, 700, 50);
  
  
  
  
  
  
}


void mouseDragged() {
  if (buttonSelected == "mushroom") {
    //mushroom drawing
    image(Mushroom, mouseX - 50, mouseY - 50, 100, 100);
  }
  else if (buttonSelected == "red" ) {
    strokeWeight((sliderX - 500)/2);
    stroke(red);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
   else if (buttonSelected == "yellow" ) {
    strokeWeight((sliderX - 500)/2);
    stroke(yellow);
    line(pmouseX, pmouseY, mouseX, mouseY);
   }
   else if (buttonSelected == "green" ) {
    strokeWeight((sliderX - 500)/2);
    stroke(green);
    line(pmouseX, pmouseY, mouseX, mouseY);
   }
    else if (buttonSelected == "blue" ) {
    strokeWeight((sliderX - 500)/2);
    stroke(blue);
    line(pmouseX, pmouseY, mouseX, mouseY);
   }
   else if (buttonSelected == "purple" ) {
    strokeWeight((sliderX - 500)/2);
    stroke(purple);
    line(pmouseX, pmouseY, mouseX, mouseY);
   }
    else if (buttonSelected == "black" ) {
    strokeWeight((sliderX - 500)/2);
    stroke(black);
    line(pmouseX, pmouseY, mouseX, mouseY);
   }
   
   
   //slider
  controlSlider(); 
  
}

void mouseReleased() {
  // if mouse is in close to the center of the mushroom button
  if ( dist(115, 710, mouseX, mouseY) < 40 ){
    buttonSelected = "mushroom";
    drawControlPanel(); 
  } 
  // if mouse is close to the center of the circle button
  else if ( dist(250, 670, mouseX, mouseY) < 20 ){
    buttonSelected = "red";
    drawControlPanel();
  }
  else if ( dist(300, 670, mouseX, mouseY) < 20 ){
    buttonSelected = "yellow";
    drawControlPanel();
  }
  else if ( dist(350, 670, mouseX, mouseY) < 20 ){
    buttonSelected = "green";
    drawControlPanel();
    }
  else if ( dist(250, 725, mouseX, mouseY) < 20 ){
    buttonSelected = "blue";
    drawControlPanel();
  }
  else if ( dist(300, 725, mouseX, mouseY) < 20 ){
    buttonSelected = "purple";
    drawControlPanel();
    
  }else if ( dist(350, 725, mouseX, mouseY) < 20 ){
    buttonSelected = "black";
    drawControlPanel();
  }
  
  //slider 
  controlSlider(); 
  
  
  //all white
  if (mouseX > 400 && mouseX < 470 && mouseY > 730 && mouseY < 760) {
 background(backgroundcolor); 
  }
}

void tactile(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w) {
  } else {
    fill(255);
  }
}







void controlSlider() {
  if (mouseX > 500 && mouseX < 750 && mouseY > 675 && mouseY < 725) {
      sliderX = mouseX;
  }
  
}
