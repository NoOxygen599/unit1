//pong
//2-3

//colors
color lightPurple = #BF9A82;
color brown = #45201E;
color pink = #FF0F53;
color green = #558A67;


//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//entity variabled
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld; //ball
float vx, vy; 

//scoreing
int leftscore, rightscore, timer;

//keyboard variables
boolean wkey, skey, upkey, downkey;








void setup() {
  size(800, 600);
  mode = GAME;
  
  //initalize paddles
  leftx = 0;
  lefty = height/2;
  leftd = 100;
  
  rightx = width;
  righty = height/2;
  rightd = 100;
  
  //initialize ball
  ballx = width/2;
  bally = height/2;
  balld = 75;
  
  
  vx = random(-5,5);
  vy = random(-5,5);
  
  //initialize score
  rightscore = leftscore = 0;
  
  timer = 100;
  
  
  
  
  //initialize keyboard vars
  wkey = skey = upkey = downkey = false;
}


void draw() {
  if (mode == INTRO) {
   intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
   println("Mode error: " + mode);
  }
}
