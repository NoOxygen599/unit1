









void setup() {
  size (800, 600);
}

void draw() {
  
  face(200, 100);  //x, y
  
}


void face(int x, int y)   {
pushMatrix();
translate(x, y);

skin();
hair();
eye(100, 200);
eye(300, 200);
mouth();

popMatrix();

}

void skin() {
  fill(blue);
  stroke(black);
  strokeWeight(3);
  rect(0, 0, 400, 400);
}

void hair();
strokeWeight(25);
int x = 0;
while (x <= 400) {
  line (x, -50, x, 50);
  x = x + 50;
}
//back to normal strokeweight
strokeWeight(3);
}

void eye(int x, int y)  {
  
}
