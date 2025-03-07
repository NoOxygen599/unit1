//test 

float testmark;

float percent;

void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);
  testmark = 20; //out of 29
  
  //              dependent var  range of testmark   range of percent
  percent = map( testmark,    0,40,          0, 100); 
  
}

void draw() {
  background(0);
  textSize(100);
  text(percent, 400, 300);
  
}
