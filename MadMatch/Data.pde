color smokyBlack = color(16, 12, 8);
color dimGray = color(106, 104, 122);
color mustard = color(247, 206, 91);
color darkMossGreen = color(100, 101, 54);
color barnRed = color(111, 26, 7);

PImage snickersb;
PImage milkb;
PImage eggb;
PImage butterb;
PImage flourb;
PImage sugarb;
PImage riceb;
PImage potatob;
PImage orangeb;
PImage grapeb;

PImage heart;

StringList snickersu = new StringList("Blev først solgt i 1930", "Indeholder 303 kalorier i alt", "Vejer typisk 45g");
StringList milku = new StringList("Indeholder 42 kcal/100g", "Har højt calcium indhold", "Indeholder ca. 87% vand");
StringList eggu = new StringList("Består af to dele", "Indeholder 155 kcal/100g", "Har højt kolesterol indhold");
StringList butteru = new StringList("Indeholder ca. 80% fedt", "Koger ved 150 grader", "Bliver hårdere ved lavere temperaturer");
StringList flouru = new StringList("Har højt kulhydrat indhold", "Indeholder stivelse", "Indeholder ca. 20% protein");
StringList sugaru = new StringList("Indeholder 387 kcal/100g", "Indeholder ca. 100% kulhydrat", "Smelter ved 186 grader");
StringList riceu = new StringList("Indeholder ca. 68% vand", "Er en basisfødevare", "Forbindes med asien");
StringList potatou = new StringList("Indeholder ca. 79% vand", "Har højt kalium indhold", "Indeholder meget vitamin C");
StringList orangeu = new StringList("Er en del af citrus familien", "Gror på træer", "Indeholder 47 kcal/100g");
StringList grapeu = new StringList("Kan spises uden at blive behandlet", "Bruges til at lave en drikkevare", "Findes i flere farver");



void loadBilleder() {
  snickersb     = loadImage("snickers.png");
  milkb         = loadImage("mælk.png");
  eggb          = loadImage("egg.png");
  butterb       = loadImage("butter.png");
  flourb        = loadImage("flour.png");
  sugarb        = loadImage("sugar.png");
  riceb         = loadImage("rice.png");
  potatob       = loadImage("potato.png");
  orangeb       = loadImage("orange.png");
  grapeb        = loadImage("grape.png");


  heart         = loadImage("heart.png");
}
