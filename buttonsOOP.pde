//Cyrus


//colors
color red    = #DE2626;
color blue   = #36C8FF;
color purple = #BB36FF;
color green  = #1FED69;
color orange = #FF9100;
color yellow = #FEFF00;
color white  = #000000; 

boolean mouseReleased;
boolean wasPressed;

Button[] myButtons;

color bkg;

PImage buttonpic;


void setup () {
 
  size(600, 600);
  bkg = white;
  
  myButtons = new Button [5]; 
  myButtons[0] = new Button("RED", 450, 150, 270, 270, red, blue);
  myButtons[1] = new Button("PURPLE", 150, 100, 270, 100, purple, green);
  myButtons[2] = new Button("ORANGE", 150, 230, 270, 100, orange, yellow);
  myButtons[3] = new Button("BLUE", 150, 400, 150, 150, blue, red);
  myButtons[4] = new Button("GREEN", 400, 400, 150, 150, green, purple);
}


void draw() {
  click();
  background(bkg);
  
  int i = 0;
  while (i < 5) {
    myButtons[i].show();
    if (myButtons[i].clicked) {
      bkg = myButtons[i].normal;
    }
    i++;
  }

}


























 
