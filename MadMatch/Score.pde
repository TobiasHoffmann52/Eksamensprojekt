class Score {
  int score;
  int highscore;

  Score(int score, int highscore) {
    this.score = score;
    this.highscore = highscore;
  }

  void displayScore() {
    fill(mustard);
    rect(0, 0, displayWidth, 80);


    textSize(36);
    fill(255);
    textAlign(LEFT);
    text("Highscore: " + g.highscore, 25, 50);
    textAlign(CENTER);
    text("Level: " + g.level, displayWidth/2, 50);
  }
}
