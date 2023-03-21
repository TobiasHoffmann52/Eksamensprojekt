class Game {

  Button felt1;
  Button felt2;
  Button felt3;
  Score s;

  Item snickers;
  Item maelk;

  void runGame() {
    s = new Score(1, 0);

    loadBilleder();

    ArrayList<Item> items = new ArrayList<Item>();
    items.add(snickers = new Item(100, 100, 200, 200, "Snickers", snick));
    items.add(maelk = new Item(400, 100, 200, 200, "Mælk", milk));
    
    /* 
    -- Liste over objekter --
    [0] Snickers
    [1] Mælk
    [2] 
    
    
    
    
    */
    
  }

  void display() {
    s.display();
    snickers.displayItem();
    maelk.displayItem();
  }
}
