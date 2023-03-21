class Game {

  Button felt1;
  Button felt2;
  Button felt3;
  Score s;
  ArrayList<Item> items = new ArrayList<Item>();

  void runGame() {
    s = new Score(1, 0);

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

  void displayItems() {
    int index1 = int(random(items.size()));
    int index2 = int(random(items.size()));
    int index3 = int(random(items.size()));

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


  void display() {
    s.displayScore();
    displayItems();
  }
}
