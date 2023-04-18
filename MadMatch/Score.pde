class Score {
  int score;
  int highscore;
  color farve = mustard;
  
  int temp;

  Score(int score, int highscore) {
    this.score = score;
    this.highscore = highscore;
  }

  void displayScore() {
    fill(farve);
    rectMode(CORNER);
    rect(0, 0, displayWidth, 80);
    
    for(int i = 1; i <= g.antalLiv; i++){
    imageMode(CORNER);
    image(heart, displayWidth/2+100+80*i, 10, heart.width/12, heart.height/12);
    }


    textSize(36);
    fill(255);
    textAlign(LEFT);
    text("Highscore: " + g.highscore, 25, 50);
    textAlign(CENTER);
    text("Level: " + g.level, displayWidth/2, 50);
    
      if (g.highscore < g.level) {
      g.highscore = g.level;
    }
      if (frameCount>g.temp+60) {
      farve = mustard;
      g.temp = 0;
    }
    
  }
}
