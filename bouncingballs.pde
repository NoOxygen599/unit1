color white = #ffffff;
color black = #000000;
color red   = #ff0000;

//player variables -----------------------
float player1x, player1y, player1d;
float player2x, player2y, player2d;

// ball varibales--------------------------
float ballx, bally, balld;
float vx, vy;

// score
int points;


// keyboard variables-------------------------\
boolean wKey, sKey, dKey, aKey, upKey, downKey, leftKey, rightKey;


void setup() {
  size(600, 600, P2D);
  player1x = width/2;
  player1y = height/2;
  player1d = 100;
  
  player2x = width/2;
  player2y = height/2;
  player2d = 100; 
  
  
  //ball setup
  ballx = width/2;
  bally = 50;
  balld= 50;
  
  vx = 2;
  vy = 3;
}

void draw() {
  background(white);
  
  
 //playerone
  strokeWeight(3);
  stroke(black);
  fill(white);
  circle(player1x, player1y, player1d); 
   strokeWeight(3);
  stroke(white);
  fill(black);
  circle(player2x, player2y, player2d);

//ball
strokeWeight(5);
stroke(0);
fill(255,0,0);
circle(ballx, bally, balld);

//movement
ballx = ballx + vx;
bally = bally + vy;

if (wKey) player1y -= 5;
if (sKey) player1y += 5;
if (aKey) player1x -= 5;
if (dKey) player1x += 5;

if (upKey) player2y -= 5;
if (downKey) player2y += 5;
if (leftKey) player2x -= 5;
if (rightKey) player2x += 5;

//bouncing code
if (bally <= 0) { //top
vy = vy * -1;
} 
if (bally >= height) { //bottom
vy = vy * -1;
}
if (ballx <= 0) { //right
vx = vx * -0.9;
ballx = 0;
}
if (ballx >= width) { //left
  vx = vx * -0.9;
  ballx = 599;
}



//ball bouncing off player
if (dist(player1x, player1y, ballx, bally) <= player1d/2 + balld/2 ) {
  vx = (ballx - player1x)/5;
  vy = (bally - player1y)/5;
}

//ball bouncing off player2
if (dist(player2x, player2y, ballx, bally) <= player2d/2 + balld/2 ) {
  vx = (ballx - player2x)/5;
  vy = (bally - player2y)/5;

}
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
