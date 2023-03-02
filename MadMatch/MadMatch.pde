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
  g.felt1.display();
  g.felt2.display();
  g.felt3.display();
  g.s.display();
}

void mousePressed() {
}
