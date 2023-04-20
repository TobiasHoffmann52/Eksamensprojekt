// Farver
color smokyBlack = color(16, 12, 8);
color dimGray = color(106, 104, 122);
color mustard = color(247, 206, 91);
color darkMossGreen = color(100, 101, 54);
color barnRed = color(111, 26, 7);

// Billeder
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
PImage coffeeb;
PImage pastab;
PImage cornflakesb;
PImage oatmealb;
PImage tomatob;
PImage cucumberb;
PImage energydrinkb;
PImage colab;
PImage beefb;
PImage chickenb;
PImage chipsb;
PImage candyb;
PImage teab;

PImage heart;

// StringList
StringList snickersu     = new StringList("Blev først solgt i 1930", "Indeholder 303 kalorier i alt", "Vejer typisk 45g");
StringList milku         = new StringList("Indeholder 42 kcal/100g", "Har højt calcium indhold", "Indeholder ca. 87% vand");
StringList eggu          = new StringList("Består af to dele", "Indeholder 155 kcal/100g", "Har højt kolesterol indhold");
StringList butteru       = new StringList("Indeholder ca. 80% fedt", "Koger ved 150 grader", "Bliver hårdere ved lavere temperaturer");
StringList flouru        = new StringList("Har højt kulhydrat indhold", "Indeholder stivelse", "Indeholder ca. 20% protein");
StringList sugaru        = new StringList("Indeholder 387 kcal/100g", "Indeholder ca. 100% kulhydrat", "Smelter ved 186 grader");
StringList riceu         = new StringList("Indeholder ca. 68% vand", "Er en basisfødevare", "Forbindes med asien");
StringList potatou       = new StringList("Indeholder ca. 79% vand", "Har højt kalium indhold", "Indeholder meget vitamin C");
StringList orangeu       = new StringList("Er en del af citrus familien", "Gror på træer", "Indeholder 47 kcal/100g");
StringList grapeu        = new StringList("Kan spises uden at blive behandlet", "Bruges til at lave en drikkevare", "Findes i flere farver");
StringList coffeeu       = new StringList("Har et koffeinindhold på ca. 40mg/100ml", "Den andet mest handlede råvare i verden", "Tideligere har indtagelse været straffet med dødsstraf");
StringList pastau        = new StringList("Kan findes på som friskt eller tørret", "Forbindes med Italien", "Skal koges før det indtages");
StringList cornflakesu   = new StringList("Det mest solgte morgenmadprodukt", "Indeholder 357 kcal/100g", "Blev først solgt i 1908");
StringList oatmealu      = new StringList("Har højt fiber indhold", "God kilde til antioxidanter", "Kan sænke ens kolesteroltal");
StringList tomatou       = new StringList("Kan have flere forskellige farver", "Forbyggende mod hjertekarsygdomme", "Kina er dens største eksportør");
StringList cucumberu     = new StringList("Indeholder ca. 95% vand", "Indeholder meget vitamin K", "Stammer fra Sydøstasien");
StringList energydrinku  = new StringList("Har et koffeinindhold på ca. 36mg/100ml", "Kan øge årvågenhed og forbedre reaktionstid", "Kan reducere stabiliteten af ​​hænderne");
StringList colau         = new StringList("Har et koffeinindhold på ca. 8mg/100ml", "Blev engang givet væk gratis", "Den første olympiske sponsor");
StringList beefu         = new StringList("Indeholder ca. 52% protein", "Indeholder meget jern", "Indeholder meget zink");
StringList chickenu      = new StringList("Blev anset som en delikatesse af de gamle grækere", "Hovedingrediensen i stor fastfood kæde", "Meget fedtfattigt");
StringList chipsu        = new StringList("Blev først solgt i 1853", "Indeholder 536 kcal/100g", "Blev opfundet som en joke");
StringList candyu        = new StringList("Blev først solgt i 1908", "Hovedingrediensen er gelatine", "Stammer fra England");
StringList teau          = new StringList("Har et koffeinindhold på ca. 11mg/100ml", "Stammer fra asien", "Kan indtages både koldt og varmt");

// Fonte
PFont font1;
PFont font2;

// Funktion til indlæselse af billeder
void loadData() {
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
  coffeeb       = loadImage("coffee.png");
  pastab        = loadImage("pasta.png");
  cornflakesb   = loadImage("cornflakes.png");
  oatmealb      = loadImage("oatmeal.png");
  tomatob       = loadImage("tomato.png");
  cucumberb     = loadImage("cucumber.png");
  energydrinkb  = loadImage("energydrink.png");
  colab         = loadImage("cola.png");
  beefb         = loadImage("beef.png");
  chickenb      = loadImage("chicken.png");
  chipsb        = loadImage("chips.png");
  candyb        = loadImage("candy.png");
  teab          = loadImage("tea.png");

  heart         = loadImage("heart.png");

  lyd = new SoundFile(this, "data/hurt.mp3");
  font1 = loadFont("DejaVuSans-BoldOblique-96.vlw");
  font2 = loadFont("DejaVuSans-Bold-96.vlw");
}
