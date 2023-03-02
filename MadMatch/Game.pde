class Game {

  Button felt1;
  Button felt2;
  Button felt3;
  Score s;

  Item snickers;
  Item maelk;

  void runGame() {
    s = new Score(1, 0);
    felt1 = new Button(width/2-100-300, 300, 200, 200, dimGray, dimGray, "Placér her"); 
    felt2 = new Button(width/2-100, 300, 200, 200, dimGray, dimGray, "Placér her"); 
    felt3 = new Button(width/2-100+300, 300, 200, 200, dimGray, dimGray, "Placér her");
    loadBilleder();

    snickers = new Item(100, 100, 200, 200, "Snickers", snick);
    maelk = new Item(400, 100, 200, 200, "Mælk", milk);
  }

  void display() {
    s.display();
    snickers.displayItem();
    maelk.displayItem();
  }
}
