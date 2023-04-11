class Udsagn{
  float x, y;
  float w, h;
  boolean dragging = false;
  float offsetX, offsetY;

  StringList udsagn;
  String statement1;
  String statement2;
  String statement3;

  Udsagn(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void getUdsagn( StringList udsagn) {
    this.udsagn = udsagn;
    statement1 = udsagn.get(int(random(udsagn.size()))); //<>//
    statement2 = udsagn.get(int(random(udsagn.size())));
    statement3 = udsagn.get(int(random(udsagn.size())));
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
    rectMode(CENTER);
    rect(x,y,w,h);
    fill(255);
    textSize(18);
    text(statement1, x, y); //<>//
  }
}

Udsagn udsagn1 = new Udsagn(200, 800, 300, 40);
Udsagn udsagn2 = new Udsagn(width/2, 800, 300, 40);
Udsagn udsagn3 = new Udsagn(width/2-200, 800, 300, 40);
