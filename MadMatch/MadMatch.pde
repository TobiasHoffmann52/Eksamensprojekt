Game g; //<>// //<>//

void settings() {
  fullScreen();
}

void setup() {
  background(smokyBlack);


  noStroke();
  g = new Game();
  g.runGame();

  frameRate(60);
}

void draw() {
  clear();
  g.display();
  g.updateScore();
}

void mousePressed() {
  g.next.clicked(mouseX, mouseY);
  g.reset.clicked(mouseX, mouseY);
}
