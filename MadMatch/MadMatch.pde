Game g;

void settings() {
  fullScreen();
}

void setup() {
  background(smokyBlack);


  noStroke();
  g = new Game();
  g.runGame();

  frameRate(1);
}

void draw() {
  clear();
  g.display();
}

void mousePressed() {
}
