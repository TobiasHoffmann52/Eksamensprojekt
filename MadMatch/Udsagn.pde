class Udsagn { //<>// //<>//
  float x, y;
  float w, h;
  boolean dragging = false;
  float offsetX, offsetY;

  StringList udsagn;
  String statement;
  boolean korrekt = false;

  Udsagn(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void getUdsagn( StringList udsagn) {
    this.udsagn = udsagn;
    statement = udsagn.get(int(random(udsagn.size())));
  }



  void click(float mx, float my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      dragging = true;
      offsetX = x - mx;
      offsetY = y - my;
    }
  }


  void drag(float mx, float my) {
    if (dragging) {
      x = mx + offsetX;
      y = my + offsetY;
    }
  }



  void display() {
    fill(mustard);
    rectMode(CORNER);
    stroke(2);
    w = statement.length()*10;
    rect(x, y, w, h);
    noStroke();
    
    fill(255);
    textSize(16);
    text(statement, x+w/2, y+h/2);
  }
}
