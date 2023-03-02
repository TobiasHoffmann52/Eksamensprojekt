class Item {
  float x, y;
  float w, h;
  String navn;
  PImage billede;

  Item(float x, float y, float w, float h, String navn, PImage billede) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.navn = navn;
    this.billede = billede;
  }

  void displayItem() {
    textAlign(CENTER);
    text(navn, x, y);
    image(billede, x, y, w, h);


    fill(dimGray);
    rect(x, y+200, w, h);
    fill(0);
    textSize(20);
    text("Placér her", x + w/2, y + h/2+200);
  }
}
