Mover myMover;


void setup() {
  size (600, 600);
  myMover = new Mover();
}

void draw() {
  background(0);
  myMover.act();
  myMover.show();
}
