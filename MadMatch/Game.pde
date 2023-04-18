class Game { //<>// //<>// //<>//
  Button next;
  Button reset;
  Score s;


  int level = 0;
  int highscore = 0;

  int index1;
  int index2;
  int index3;

  boolean svar = false;

  ArrayList<Item> items = new ArrayList<Item>();

  void runGame() {

    s = new Score(level, highscore);

    next = new Button(displayWidth-150, 15, 120, 50, darkMossGreen, dimGray, "Næste", 255);
    next.selected=true;

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
    if (reset.selected==true) {
      level = 1;
      reset.reset();
    }

    if (next.selected==true) {
      if (highscore < level) {
        highscore = level;
      }

      if (svar) {
        level = level + 1;

        index1 = int(random(items.size()));
        index2 = int(random(items.size()));
        index3 = int(random(items.size()));
        svar = false;
      }
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
    while (item1.udsagn.x == 100) {
      item1.udsagn.x = 200;
      item1.udsagn.y = 800;
    }

    Item item2 = items.get(index2);
    item2.displayItem(width/2, 100, 400, 400);
    while (item2.udsagn.x == 100) {
      item2.udsagn.x=width/2;
      item2.udsagn.y = 800;
    }

    Item item3 = items.get(index3);
    item3.displayItem(width-200, 100, 400, 400);
    while (item3.udsagn.x == 100) {
      item3.udsagn.x=width-200;
      item3.udsagn.y = 800;
    }

    boolean svar1 = item1.tjekPlacering();
    boolean svar2 = item2.tjekPlacering();
    boolean svar3 = item3.tjekPlacering();

    if (svar1 && svar2 && svar3) {
      svar = true;
    }
  }


  void display() {
    s.displayScore();
    next.display();
    reset.display();
    displayItems();

    text(mouseX+ " "+mouseY, 100, 100);
  }
}
