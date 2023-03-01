Button b;

void setup() {
  background(smokyBlack);
  size(1000, 600);

  noStroke();
  
  b = new Button(100,100,100,100,darkMossGreen,barnRed,"test"); 
}

void draw(){
clear();
  b.display();

}

void mousePressed(){
b.clicked(mouseX,mouseY);



}
