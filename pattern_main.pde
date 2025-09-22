 int cols = 200;
int rows = 200;
int cellSize = 3;
float v = 0;

void setup() {
  size(600,600);
  //size(cols * cellSize, rows * cellSize);
  //noloop();
}

 void draw() {
   v -= 0.05;
   for (int y = 0; y < rows; y++) {
     for(int x = 0; x < cols; x++) {
     float n=noise(x * 0.2 -v, y * 0.05 +v);
     fill(n * random(200),n * 20,n * 230); 
     rect( x * cellSize, y * cellSize, cellSize, cellSize);
    }
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
 









 
