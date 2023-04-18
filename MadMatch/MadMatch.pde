Game g; //<>//
import processing.sound.*;
SoundFile lyd;

void settings() {
  fullScreen(3);
}

void setup() {
  background(smokyBlack);
  noStroke();
  g = new Game();
  g.runGame();

  frameRate(60);
  lyd = new SoundFile(this, "data/hurt.mp3");
}

void draw() {
  clear();
  g.display();
}

void mousePressed() {
  g.next.clicked(mouseX, mouseY);
  g.reset.clicked(mouseX, mouseY);
  g.tjekSvar();
}
