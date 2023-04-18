class Game { //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  Button next;
  Button reset;
  Score s;

  int level = 1;
  int highscore = 1;
  int antalLiv = 5;

  int index1, index2, index3;

  boolean svar = false;
  boolean svar1, svar2, svar3;
  boolean doOnce = true;

  ArrayList<Item> items = new ArrayList<Item>();

  void runGame() {

    s = new Score(level, highscore);

    next = new Button(displayWidth-150, 15, 120, 50, darkMossGreen, dimGray, "Næste", 255);
    reset = new Button(displayWidth-300, 15, 120, 50, darkMossGreen, dimGray, "Reset", 255);

    loadBilleder();

    items.add(new Item("Snickers", snickersb, snickersu));
    items.add(new Item("Mælk", milkb, milku));
    items.add(new Item("Æg", eggb, eggu));
    items.add(new Item("Smør", butterb, butteru));
    items.add(new Item("Mel", flourb, flouru));
    items.add(new Item("Sukker", sugarb, sugaru));
    items.add(new Item("Ris", riceb, riceu));
    items.add(new Item("Kartofel", potatob, potatou));
    items.add(new Item("Appelsin", orangeb, orangeu));
    items.add(new Item("Vindrue", grapeb, grapeu));

    /* 
     -- Liste over objekter --
     [0] Snickers
     [1] Mælk
     [2] Æg
     [3] Smør
     [4] Mel
     [5] Sukker
     [6] Ris
     [7] Kartofel
     [8] Appelsin
     */
  }
  int temp;
  void tjekSvar() {
    if (next.selected) {
      if (svar1 && svar2 && svar3) {
        svar = true;
        s.farve = darkMossGreen;
        temp = frameCount;
        level = level + 1;

        index1 = int(random(items.size()));
        index2 = int(random(items.size()));
        index3 = int(random(items.size()));
      } else {
        s.farve = barnRed;
        temp = frameCount;
        antalLiv = antalLiv - 1;
        lyd.play();

        if (antalLiv == 0) {
          reset.selected = true;
        }
      }
      next.reset();
    }

    if (reset.selected) {
      level = 1;
      antalLiv = 5;

      index1 = int(random(items.size()));
      index2 = int(random(items.size()));
      index3 = int(random(items.size()));

      s.farve = mustard;
      reset.reset();
    }
  }



  void displayItems() {
    while (index2 == index1 || index2 == index3) {
      index2 = int(random(items.size()));
    }

    while (index3 == index1 || index3 == index2) {
      index3 = int(random(items.size()));
    }

    Item item1 = items.get(index1);
    item1.displayItem(200, 100, 400, 400);



    Item item2 = items.get(index2);
    item2.displayItem(width/2, 100, 400, 400);


    Item item3 = items.get(index3);
    item3.displayItem(width-200, 100, 400, 400);

    item1.udsagn.display();
    item2.udsagn.display();
    item3.udsagn.display();

    svar1 = item1.tjekPlacering();
    svar2 = item2.tjekPlacering();
    svar3 = item3.tjekPlacering();

    if (doOnce) {
      item1.udsagn.x = random(displayWidth-300);
      item1.udsagn.y = random(displayHeight-350, displayHeight-50);

      item2.udsagn.x = random(displayWidth-300);
      item2.udsagn.y = random(displayHeight-350, displayHeight-50);

      item3.udsagn.x = random(displayWidth-300);
      item3.udsagn.y = random(displayHeight-350, displayHeight-50);

      doOnce = false;
    }
  }

  void display() {
    s.displayScore();
    next.display();
    reset.display();
    displayItems();
  }
}
