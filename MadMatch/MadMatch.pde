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
  g.updateScore(); //<>//

  udsagn1.display(); //<>//
  udsagn2.display();
  udsagn3.display();
}

void mousePressed() {
  g.next.clicked(mouseX, mouseY);
  g.reset.clicked(mouseX, mouseY);

  udsagn1.click(mouseX, mouseY);
  udsagn2.click(mouseX, mouseY);
  udsagn3.click(mouseX, mouseY);
}

void mouseReleased() {
  udsagn1.dragging = false;
  udsagn2.dragging = false;
  udsagn3.dragging = false;
}

void mouseDragged() {
  udsagn1.drag(mouseX, mouseY);
  udsagn2.drag(mouseX, mouseY);
  udsagn3.drag(mouseX, mouseY);
}
