class Game { //<>//
  Button next;
  Button reset;
  Button start;
  Score s;

  int level = 1;
  int highscore = 1;
  int antalLiv = 5;

  int index1, index2, index3;

  boolean svar1, svar2, svar3;
  boolean doOnce = true;

  ArrayList<Item> items = new ArrayList<Item>();

  void runGame() {
    // Laver scoresystem
    s = new Score(level, highscore);

    // Næste og reset knapperne laves
    next = new Button(displayWidth-150, 15, 140, 60, darkMossGreen, dimGray, "Næste", 255);
    reset = new Button(displayWidth-300, 15, 140, 60, darkMossGreen, dimGray, "Reset", 255);
    start = new Button(displayWidth/2-100, displayHeight/2+200+texty, 200, 50, smokyBlack, smokyBlack, "Start", mustard);

    // Alle billeder indlæses
    loadData();

    // Fødevarene bliver lagt ind i ArrayList
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
    items.add(new Item("Kaffe", coffeeb, coffeeu));
    items.add(new Item("Pasta", pastab, pastau));
    items.add(new Item("Cornflakes", cornflakesb, cornflakesu));
    items.add(new Item("Havregryn", oatmealb, oatmealu));
    items.add(new Item("Tomat", tomatob, tomatou));
    items.add(new Item("Agurk", cucumberb, cucumberu));
    items.add(new Item("Energidrik", energydrinkb, energydrinku));
    items.add(new Item("Cola", colab, colau));
    items.add(new Item("Oksekød", beefb, beefu));
    items.add(new Item("Kylling", chickenb, chickenu));
    items.add(new Item("Chips", chipsb, chipsu));
    items.add(new Item("Vingummi", candyb, candyu));
    items.add(new Item("Te", teab, teau));

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
     [9] Vindrue
     [10] Kaffe
     [11] Pasta
     [12] Cornflakes
     [13] Havregryn
     [14] Tomat
     [15] Agurk
     [16] Energidrik
     [17] Cola
     [18] Oksekød
     [19] Kylling
     [20] Chips
     [21] Vingummi
     [22] Te
     */
  }

  // Tjekker om svarene er korrekte
  int temp;
  void tjekSvar() {
    if (next.selected) {
      if (svar1 && svar2 && svar3) {
        s.farve = darkMossGreen; // Skifter bjælkens farve
        correct.play();
        temp = frameCount;
        level = level + 1; // Øger level

        // Indlæser nye fødevare
        index1 = int(random(items.size()));
        index2 = int(random(items.size()));
        index3 = int(random(items.size()));

        doOnce = true;
      } else {
        s.farve = barnRed; // Skifter bjælkens farve
        temp = frameCount;
        antalLiv = antalLiv - 1; // Fjerner et liv
        wrong.play();

        if (antalLiv == 0) {
          reset.selected = true; // Game over
        }
      }
      next.reset();
    }

    if (reset.selected) {
      // Nulstiller variable og indlæser nye fødevare
      level = 1;
      antalLiv = 5;

      index1 = int(random(items.size()));
      index2 = int(random(items.size()));
      index3 = int(random(items.size()));

      doOnce = true;

      s.farve = mustard;
      reset.reset();
    }
  }

  void displayItems() {
    // Sikre at der ikke kan være flere af den samme fødevare
    while (index2 == index1 || index2 == index3) {
      index2 = int(random(items.size()));
    }

    while (index3 == index1 || index3 == index2) {
      index3 = int(random(items.size()));
    }

    // Opretter de tre fødevare og tegner dem
    Item item1 = items.get(index1);
    item1.displayItem(200, 100, 400, 400);

    Item item2 = items.get(index2);
    item2.displayItem(width/2, 100, 400, 400);

    Item item3 = items.get(index3);
    item3.displayItem(width-200, 100, 400, 400);

    // Tegner udsagnene
    item1.udsagn.display();
    item2.udsagn.display();
    item3.udsagn.display();

    // Tjekker løbende udsagnenes placering
    svar1 = item1.tjekPlacering();
    svar2 = item2.tjekPlacering();
    svar3 = item3.tjekPlacering();

    // Kører kun når der er et nyt level eller reset
    if (doOnce) {
      item1.udsagn.x = random(displayWidth-300);
      item1.udsagn.y = random(displayHeight-350, displayHeight-50);
      item1.udsagn.getUdsagn(item1.udsagnListe);

      item2.udsagn.x = random(displayWidth-300);
      item2.udsagn.y = random(displayHeight-350, displayHeight-50);
      item2.udsagn.getUdsagn(item2.udsagnListe);

      item3.udsagn.x = random(displayWidth-300);
      item3.udsagn.y = random(displayHeight-350, displayHeight-50);
      item3.udsagn.getUdsagn(item3.udsagnListe);

      doOnce = false;
    }
  }
  
  int texty = 0;
  void displayStart() {
    start.y = displayHeight/2+200+texty;

    rectMode(CENTER);
    fill(mustard);
    rect(displayWidth/2, displayHeight/2+texty, displayWidth, displayHeight);

    fill(smokyBlack);

    rect(displayWidth/2, displayHeight/2+texty, frameCount*10, 200);

    textSize(96);
    textFont(font1);
    textAlign(CENTER, CENTER);
    fill(mustard);
    text("MadMATCH!", displayWidth/2, displayHeight/2+texty);

    if (frameCount >= 190) {
      start.display();
    }
    if (start.selected && texty >= -1*displayHeight) {
      texty = texty-5;
    }

    textFont(font2);
  }

  // Kører alle display funktioner
  void display() {
    s.displayScore();
    next.display();
    reset.display();
    displayItems();
    displayStart();
  }
}
