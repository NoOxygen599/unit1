//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//COLORWORD VARIABLES
int randomWord  = (int) random(0,4);
int randomColor = (int) random(0,4);

//score
int Score = 0;

color red    = #FA0000;
color green  = #33C404;
color blue   = #03ADFF;
color yellow = #FFD603;



void setup() {
  size (600, 600); 
 // textSize(50);
  textAlign(CENTER,CENTER);
  mode = INTRO; 
  
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }
  
  
}

void mouseReleased() {
  if (mode == INTRO) {
    if (mouseX > 170 && mouseX < 440 && mouseY > 400 && mouseY < 480) {
      mode = GAME;
    }
  }
}



