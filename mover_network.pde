Mover[] movers;
int numberOfMovers = 50;

void setup() {
  size(800, 800);
  movers = new Mover[numberOfMovers]; //instatiate array
  
  int i = 0;
  while (i < numberOfMovers) {
    movers[i] = new Mover() ; // calling mover constructor
    i++;
  }
 }
 
void draw() {
  background(#3C62CE);
  int i = 0;
  while ( i < numberOfMovers) {
   movers[i].act();
   movers[i].showBody();
   movers[i].showConnections();
   i++;
 }
}

   
