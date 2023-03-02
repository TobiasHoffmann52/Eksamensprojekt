class Score extends Game {
  int score;
  int highscore;

  Score(int score, int highscore) {
    this.score = score;
    this.highscore = highscore;
  }

  void display() {
    fill(mustard);
    rect(0,0,width,60);
    
    textSize(36);
    fill(255);
    textAlign(LEFT);
    text("Highscore: " + highscore, 25, 40);
    textAlign(CENTER);
    text("Level: " + score, width/2, 40);
  }
}
