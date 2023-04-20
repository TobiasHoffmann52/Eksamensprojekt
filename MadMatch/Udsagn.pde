class Udsagn { //<>//
  float x, y;
  float w, h;
  boolean dragging = false;

  StringList udsagn;
  String statement;

  Udsagn(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  // Henter et tilfældig udsagn
  void getUdsagn( StringList udsagn) {
    this.udsagn = udsagn;
    statement = udsagn.get(int(random(udsagn.size())));
  }

  // Køres når der klikkes på musen
  void click(float mx, float my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      dragging = true;
    }
  }

  // Køres når musen trækkes hen over skærmen
  void drag(float mx, float my) {
    if (dragging) {
      x = mx-(w/2);
      y = my-(h/2);
    }
  }

  // Tegner udsagn
  void display() {
    fill(mustard);
    rectMode(CORNER);
    stroke(2);
    w = statement.length()*11;
    rect(x, y, w, h);
    noStroke();

    fill(smokyBlack);
    textSize(16);
    textAlign(CENTER, CENTER);
    text(statement, x+w/2, y+h/2);
  }
}
