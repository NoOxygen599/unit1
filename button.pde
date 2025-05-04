color beige = #fdf0d5;
color red   = #c1121f;
color black = #000000;
color blue  = #669bbc;


void setup() {
  size (800, 700);
  background (beige);
  
  int x, y;
  x = 50;
  y = 50;
  while ( y < 600)  {
  face(x, y, 0.25);
  x = x + 150;
  if (x >= 800) {
    x = 50;
    y = y + 150;
  //face(random(0, 500), random(0, 500), random(0.25,1));  //x, y, scale
  }
  }
  
}

void draw() {
  
}



void face(float x, float y, float s)   {
pushMatrix();
translate(x, y);
scale(s);

skin();
hair();
float r, g, b;
r = random(0,255);
g = random(0,255);
b = random(0,255);
eye(100, 200, r, g, b);
eye(300, 200, r, g, b);
eye(200, 100, r, g, b);
mouth();

popMatrix();

}

void skin() {
  fill(random(0,255), random(0,255) ,random(0,255));
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 400, 400);
}

void hair() {
strokeWeight(25);
int x = 0;
while (x <= 400) {
  line (x, -50, x, 50);
  x = x + 50;
}
//back to normal strokeweight
strokeWeight(3);
}

void eye(float x, float y, float r, float g, float b)  {
  fill(beige);
  ellipse(x, y, 100, 50);
  fill(r, g, b);
  circle(x, y, 50);
  fill(black);
  circle(x, y, 25);
}


void mouth() {
  fill(beige);
  rect (100, 250, 200, 100);
  line(100, 300, 300, 300);
  line(150, 250, 150, 350);
  line(200, 250, 200, 350);
  line(250, 250, 250, 350);
}
