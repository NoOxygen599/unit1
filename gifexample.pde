PImage[] gif;
int NoF;

void setup() {
  size(800, 800);
  NoF = 10;
  gif = new PImage[NoF];
  
  int i = 0;
  while (i < NoF) {
     gif[i] = loadImage("img("+i+").gif");
     i=i+1;
  }
  


}
void draw() {
  image(gif[0], 0, 0, width, height);
  
}
