class Game{
  
  Button felt1;
  Button felt2;
  Button felt3;
  Score s;

void runGame() {
  s = new Score(0, 1);


  felt1 = new Button(width/2-100-300, 300, 200, 200, dimGray, dimGray, "Placér her"); 
  felt2 = new Button(width/2-100, 300, 200, 200, dimGray, dimGray, "Placér her"); 
  felt3 = new Button(width/2-100+300, 300, 200, 200, dimGray, dimGray, "Placér her");
}
}
