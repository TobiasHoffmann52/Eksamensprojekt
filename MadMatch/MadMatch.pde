Game g;

void setup() {
  background(smokyBlack);
  size(1000, 700);

  noStroke();
  g = new Game();
  g.runGame();
}

void draw() {
  clear();
  g.display();
}

void mousePressed() {
}
