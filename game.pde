void game() {
  textSize(70);
  //choices
  
  background(#B3E3E2);
  fill(#3449FF);
  text("MATCH", width/2, 40);
  fill(#3449FF);
  rect(0, height/2, width, height/2);
  fill(#B3E3E2);
  text("DON'T MATCH", width/2, 550); 
  
  //color word mechanic
  textSize(100);
  String[] words = {"RED", "GREEN", "BLUE", "YELLOW"};
  color[] colors = {red, green, blue, yellow};

  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
  

}

void mousePressed() {
  if (mode == GAME) {
    if (mouseY < height/2) {
      if(randomWord == randomColor) {
        Score = Score + 1;
      } else {
        mode = GAMEOVER;
      }
      
    } else {
      if(randomWord != randomColor) {
        Score = Score + 1;
      } else {
        mode = GAMEOVER;
      }
    }
    
  }
  
}


















