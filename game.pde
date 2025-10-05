int wordTextSize = defaultWordTextSize;
void game() {
  textSize(70);

  //Button Choices
  background(#B3E3E2);
  fill(#3449FF);
  text("MATCH", width/2, 40);
  fill(#3449FF);
  rect(0, height/2, width, height/2);
  fill(#B3E3E2);
  text("DON'T MATCH", width/2, 550);
 
  //color word mechanic
  wordTextSize = wordTextSize - 1;
  if (wordTextSize < 40){
    mode = GAMEOVER;
    wordTextSize = defaultWordTextSize;
    failureSong.play();
  } else {
    textSize(wordTextSize);
    fill(colors[randomColor]);
    text(words[randomWord], width/2, height/2);
  }
}


void mousePressed() {
  if (mode == GAME) {
    wordTextSize = defaultWordTextSize;
    
    // selected match
    if ( mouseY < height/2 ){
      if (randomWord == randomColor ) {
        score = score + 1;
        successSong.play();
        randomWord = (int) random(0,4);
        if (random(1) < 0.5){
          // matching
          randomColor = randomWord;
        } else {
          // not matching
          randomColor = (int) random(0,4);
          while (randomColor == randomWord){
            randomColor = (int) random(0,4);
          }
        }
      } else {
        mode = GAMEOVER;
        failureSong.play();
      }
    // selected not match
    } else {
      if(randomWord != randomColor) {
        score = score + 1;
        successSong.play();
               randomWord = (int) random(0,4);
        if (random(1) < 0.5){
          // matching
          randomColor = randomWord;
        } else {
          // not matching
          randomColor = (int) random(0,4);
          while (randomColor == randomWord){
            randomColor = (int) random(0,4);
          }
        }
      }
      else {
        mode = GAMEOVER;
        failureSong.play();
      }
    }
  } else {
    if (mode == GAMEOVER) {
      if (mouseX > 160 && mouseX < 440 && mouseY > 530 && mouseY < 610) {
        mode = INTRO;
        score = 0;
      }
    }
  }
}
