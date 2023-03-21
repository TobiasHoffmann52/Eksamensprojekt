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
    imageMode(CENTER);
    image(billede, x+w/2, y+h/2, billede.width/4, billede.height/4);
    fill(255);
    textSize(36);

    text(navn, x+w/2, y);


    fill(dimGray);
    rect(x, y+200, w, h);
    fill(0);
    textSize(20);
    text("Placér her", x + w/2, y + h/2+200);
  }
}
