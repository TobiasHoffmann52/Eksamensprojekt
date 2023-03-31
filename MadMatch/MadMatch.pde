Game g;

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
  udsagn1.display();
}

void mousePressed() {
  g.next.clicked(mouseX, mouseY);

  udsagn2.click(mouseX, mouseY);
}

void mouseReleased() {
  udsagn2.dragging = false;
}

void mouseDragged() {
  udsagn2.drag(mouseX, mouseY);
}
