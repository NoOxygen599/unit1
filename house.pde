color blue = #40C1E3; 
color green= #0FB904;
color red = #B90425;
color brown = #904B01;
color yellow = #F2C200; 

//animation variables
float sunY;



void setup() {
  size (800, 600);
  
  
  sunY = 150; 
  
  
  
}

void draw() {
  
  //sky
  background(blue); 
  
  
   //sun
  fill(yellow);
  stroke(yellow);
  circle(100, sunY, 100);
  
  sunY = sunY + 1;
  if(sunY > height) {
    sunY = -200;
  }
  
  
  
  //grass
  fill(green); 
  rect(0, 450, 800, 150);
  
 
  //house
  fill(red);
  square(250, 200, 300);
  strokeWeight(0); 
  triangle(200, 200, 600, 200, 400, 100); 
  fill(blue);
  square(275, 250, 70);
  square(450, 250, 70);
  fill(brown); 
  rect(300, 400, 70, 100);
  fill(0);
  square(310, 450, 5);
  
  //tree
  fill(brown);
  rect(650, 300, 50, 200);
  fill(green);
  rect(600, 250, 150, 100);
  
  
  
  
  
  
  
  
  
  
  
  
  
}
