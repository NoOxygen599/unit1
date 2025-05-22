//pong
//2-3

//mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

//entity variabled
float leftx, lefty, leftd, rightx, righty, rightd;
float ballx, bally, balld; //ball


void setup() {
  size(800, 600);
  mode = GAME;
  
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
   println('Mode error: " + mode);
 }
