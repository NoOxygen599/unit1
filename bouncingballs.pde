color white = #ffffff;
color black = #000000;
color red   = #ff0000;

//player variables -----------------------
float player1x, player1y, player1d;
float player2x, player2y, player2d;

// ball varibales--------------------------
float ballx, bally, balld;
float vx, vy;



void setup() {
  size(600, 600, P2D);
  x = width/2;
  y = height/2;
 
}

void draw() {
  background(white);
  
  
 //playerone
  strokeWeight(3);
  stroke(black);
  fill(white);
  circle(x,y,d);
  
   strokeWeight(3);
  stroke(black);
  fill(black);
  circle(a,b,c);



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
 
}

void keyReleased() {

  
}
