import processing.sound.*; //<>// //<>//
SoundFile correct, wrong;

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
}

void mousePressed() {
  g.next.clicked(mouseX, mouseY);
  g.reset.clicked(mouseX, mouseY);
  g.start.clicked(mouseX, mouseY);
  g.tjekSvar();
}
