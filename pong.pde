//pong
//2-3

final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  = 4;




int mode;
final int
final int


void setup() {
  size(800, 600);
  mode = INTRO;
  
}


void draw() {
 if (mode == INTRO) {
   
 } else if (mode == GAME) {
   
 } else if (mode == PAUSE) {
   
 } else if (mode == GAMEOVER) {
  
 } else {
   println('Mode error: " + mode);
 }
