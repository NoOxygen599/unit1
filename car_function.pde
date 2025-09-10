color beige = #fdf0d5;
color red   = #c1121f;
color black = #000000;
color blue  = #669bbc;
color window = #B5F5FC;

void setup() {
  size (800, 600);
}

void draw() {
  background (beige);
  car(200, 400, 1);
}


void car(int x, int y, float s)   {
pushMatrix();
translate(x, y);

body();
window ();
wheel(80, 60);
wheel(310, 60);
door(200, 100);


popMatrix();

}

void body() {
  fill(blue);
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 400, 50);
}

void window() {
  fill(window);
  rect(280, -60, 15, 60);
  
}

void wheel(int x, int y)  {

  fill(black);
  circle(x, y, 75);
  fill(red);
  circle(x, y, 50);
}


void door(int x, int y) {
  fill(beige);
  rect (100, 250, 200, 100);
  line(100, 300, 300, 300);
  line(150, 250, 150, 350);
  line(200, 250, 200, 350);
  line(250, 250, 250, 350);
}
