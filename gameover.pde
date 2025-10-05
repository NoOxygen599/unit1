void gameover() {
  background(red);
  textSize(75);
  fill(0);
  text("GAME OVER!", width/2, height*0.2);
  
  if (score > highScore){
    highScore = score;
  }

  textSize(50);
  text("SCORE: "+score, width/2, height*0.4);
  text("HIGH SCORE: "+highScore, width/2, height*0.5);
 
  fill(red);
  rect(160, 530, 280, 80);
  fill(255);
  text("RESTART", width/2, 560);
}
