 int cols = 20;
int rows = 20;
int cellSize = 30;
float v = 0;

void setup() {
  size(600,600);
  size(cols * cellSize, rows * cellSize);
  //noloop();
}

 void draw() {
   v -= 0.02;
   for (int y = 0; y < rows; y++) {
     for(int x = 0; x < cols; x++) {
     float n=noise(x * 10 +v, y * 0.05+ v);
     fill(n * 255); 
     rect( x * cellSize, y * cellSize, cellSize, cellSize);
    }
  }
}
 









 
