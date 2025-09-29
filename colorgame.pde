//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//COLORWORD VARIABLES
int randomWord  = (int) random(0,4);
int randomColor = (int) random(0,4);

color red    = #FA0000;
color green  = #33C404;
color blue   = #03ADFF;
color yellow = #FFD603;

String[] words = {"RED", "GREEN", "BLUE", "YELLOW"};
color[] colors = {red, green, blue, yellow};

void setup() {
  size (600, 600); 
  textSize(100);
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
  
  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
}
