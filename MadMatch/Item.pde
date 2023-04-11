class Item {
  float x, y;
  float w, h;
  String navn;
  PImage billede;
  StringList udsagnListe;

  Item(String navn, PImage billede, StringList udsagnListe) {
    this.navn = navn;
    this.billede = billede;
    this.udsagnListe = udsagnListe;
  }

  void displayItem(float x, float y, float w, float h) {
    imageMode(CENTER);
    image(billede, x, y+h/2, billede.width/3, billede.height/3);

    textAlign(CENTER);
    fill(255);
    textSize(48);
    text(navn, x, y+50);

    fill(dimGray);
    rectMode(CENTER);
    rect(x, y+450, w-20, h-150); 
    fill(0);
    textSize(28);
    text("Placér her", x, y+450);
    rectMode(CORNER);
  }
}
