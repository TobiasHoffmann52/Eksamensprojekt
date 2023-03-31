class Game { //<>//
  Button next;
  Score s;

  int level = 1;
  int highscore = 0;

  int index1;
  int index2;
  int index3;

  ArrayList<Item> items = new ArrayList<Item>();

  void runGame() {
    s = new Score(level, highscore);

    next = new Button(displayWidth-150, 25, 120, 50, darkMossGreen, dimGray, "Næste", 255);

    loadBilleder();

    items.add(new Item("Snickers", snickersb));
    items.add(new Item("Mælk", milkb));
    items.add(new Item("Æg", eggb));
    items.add(new Item("Smør", butterb));
    items.add(new Item("Mel", flourb));
    items.add(new Item("Sukker", sugarb));
    items.add(new Item("Ris", riceb));
    items.add(new Item("Kartofel", potatob));

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
     */
  }

  void updateScore() {

    if (next.selected==true) {
      level = level + 1;

      if (highscore < level) {
        highscore = level;
      }

      index1 = int(random(items.size()));
      index2 = int(random(items.size()));
      index3 = int(random(items.size()));

      udsagn1.getUdsagn(snickersu);
      
      next.reset();
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
  }
 //<>//

  void display() {
    s.displayScore();
    next.display();
    displayItems();
  }
}
