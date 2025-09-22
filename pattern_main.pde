int mode;
final int PATTERN1 = 0;
final int PATTERN2 = 1;
final int PATTERN3 = 2;


int cols = 200;
int rows = 200;
int cellSize = 3;
float v = 0;

void setup() {
  size(600,600);
  mode = PATTERN3;
}

void draw() {
  if (mode == PATTERN1) {
    drawPattern1();
  } else if (mode == PATTERN2) {
    drawPattern2();
  } else if (mode == PATTERN3) {
    drawPattern3();
  } else {
    println("Invalid Mode");
  }
 
 fill(#B4B4B4);
 circle(550, 300, 50);
 
}
 
void mouseReleased() {
  if(dist(550, 300, mouseX, mouseY) < 50) {
    mode = mode + 1;
}


Pattern 1;
void drawPattern1() {
   v -= 0.05;
   for (int y = 0; y < rows; y++) {
      for(int x = 0; x < cols; x++) {
         float n=noise(x * 0.2 -v, y * 0.05 +v);
         fill(n * random(200),n * 20,n * 230); 
         rect( x * cellSize, y * cellSize, cellSize, cellSize);
      }
   }
}


patter 2; 
void drawPattern2(){
   v -= 0.05;
   for (int y = 0; y < rows; y++) {
      for(int x = 0; x < cols; x++) {
         float n=noise(x * 0.2 +v, y * 0.1 +v);
         fill(n * random(20),n * 2,n * 130); 
         rect( x * cellSize, y * cellSize, cellSize, cellSize);
      }
   }
}


pattern 3;
void drawPattern3(){
   v -= 0.05;
   for (int y = 0; y < rows; y++) {
      for(int x = 0; x < cols; x++) {
         float n=noise(x * 0.7 -v, y * 0.05 -v);
         fill(n * random(100),n * 50,n * 70); 
         rect( x * cellSize, y * cellSize, cellSize, cellSize);
      }
   }
}
  





 
