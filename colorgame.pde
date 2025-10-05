import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer introSong, successSong, failureSong;

//gif variables
PImage[] gif;
int NoF;
int f;

//MODE VARIABLES
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

// WORDS AND COLORS
color red    = #FA0000;
color green  = #33C404;
color blue   = #03ADFF;
color yellow = #FFD603;
String[] words = {"RED", "GREEN", "BLUE", "YELLOW"};
color[] colors = {red, green, blue, yellow};

//COLORWORD VARIABLES
int randomWord;
int randomColor;

//scores
int score = 0;
int highScore = 0;

final int defaultWordTextSize = 175;

void setup() {
  size (600, 600);
  NoF = 24;
  gif = new PImage[NoF];
 
  int i = 0;
  while (i < NoF) {
    gif[i] = loadImage("frame_"+i+"_delay-0.04s.gif");
    i=i+1;
  }

  textAlign(CENTER,CENTER);
  mode = INTRO;
 
  minim = new Minim(this);
  successSong = minim.loadFile("SUCCESS.wav");
  failureSong = minim.loadFile("FAILURE.wav");
  introSong = minim.loadFile("MUSIC.mp3");
  introSong.play();
}


void draw() {
  if (mode == INTRO) {
    if (frameCount % 4 == 0){
      image(gif[f], 0, 0, width, height);
      f = f + 1;
    }
    if (f == NoF) f = 0;
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  }  
}

void mouseReleased() {
  if (mode == INTRO && mouseX > 170 && mouseX < 440 && mouseY > 400 && mouseY < 480) {
      mode = GAME;
  }
}
