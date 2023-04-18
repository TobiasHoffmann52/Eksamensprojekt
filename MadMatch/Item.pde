class Item { //<>//
  float x, y;
  float w, h;
  String navn;
  PImage billede;
  StringList udsagnListe;
  Udsagn udsagn;





  Item(String navn, PImage billede, StringList udsagnListe) {
    this.navn = navn;
    this.billede = billede;
    this.udsagnListe = udsagnListe;

    udsagn = new Udsagn(x+100, y+600, 300, 40);
    udsagn.getUdsagn(udsagnListe);
  }

  void displayItem(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

    if (g.next.selected && g.svar) {
      udsagn.getUdsagn(udsagnListe);
    }

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

    //<>//

    if (mousePressed) {
      udsagn.click(mouseX, mouseY);
    } else {    
      udsagn.dragging = false;
    }
    if (mousePressed && pmouseX != mouseX && pmouseY != mouseY) {
      udsagn.drag(mouseX, mouseY);
      
    }
  }

  boolean tjekPlacering() {
    boolean r = udsagn.x > x-190 && udsagn.x < x-210+w && udsagn.y > y+330 && udsagn.y < y+330+h-150;
   //  println(udsagn.x, udsagn.y, ".....", x-190, x-210+w, y+330, y+330+h-150, udsagn.statement, ".....", r); // Viser placeringer ifm. debugging
    return r;
  }
}
