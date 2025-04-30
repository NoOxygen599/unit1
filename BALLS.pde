color white = #ffffff;
color black = #000000;

float x, y, d;
float a, b ,c;

boolean wKey, aKey, sKey, dKey;
boolean upKey, downKey, leftKey, rightKey;



void setup() {
  size(600, 600, P2D);
  x = width/2;
  y = height/2;
  d = 100;
  a = width/2;
  b = height/2;
  c = 100;
}

void draw() {
  background(white);
  
  
 //playerone
  strokeWeight(5);
  stroke(black);
  fill(white);
  circle(x,y,d);



if (wKey) y = y - 5;
if (sKey) y = y + 5;
if (aKey) x = x - 5;
if (dKey) x = x + 5;

if (upKey) b = b - 5;
if (downKey) b = b + 5;
if (leftKey) a = a - 5;
if (rightKey) a = a + 5;

}

void keyPressed() {
 if (key == 'w') wKey = true;
 if (key == 's') sKey = true;
 if (key == 'd') dKey = true;
 if (key == 'a') aKey = true;
 
 if(keyCode == UP) upKey = true;
 if(keyCode == DOWN) downKey = true;
 if(keyCode == LEFT) leftKey = true;
 if(keyCode == RIGHT) rightKey = true;
}

void keyReleased() {
  if (key == 'w') wKey = false;
  if (key == 's') sKey = false;
  if (key == 'd') dKey = false;
  if (key == 'a') aKey = false;
  
  if(keyCode == UP) upKey = false;
  if(keyCode == DOWN) downKey = false;
  if(keyCode == LEFT) leftKey = false;
  if(keyCode == RIGHT) rightKey = false;
}
