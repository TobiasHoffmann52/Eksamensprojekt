class Button extends Game{
  float x, y;
  float w, h;
  boolean selected;
  color defaultColor, selectedColor, currentColor;
  String label;

  Button(float x, float y, float w, float h, color onColor, color offColor, String label) {
    this.x = x;
    this.y = y;
    this.w = w; 
    this.h = h;
    selectedColor = onColor;
    defaultColor = offColor;
    currentColor = defaultColor;
    selected = false;
    this.label = label;
  }

  void display() {
    fill(currentColor);
    rect( x, y, w, h);
    fill(0);
    textAlign(CENTER);
    textSize(20);
    text(label, x + w/2, y + h/2);
  }

  void clicked(int mx, int my) { // mouseX og mouseY
    if ( mx > x && mx < x+w && my >y && my < y+h) {   //Knappen er blevet trykket på
      if ( selected == true) {
        selected = false;
        currentColor = defaultColor;
      } else {
        selected = true;
        currentColor = selectedColor;
      }
    } 
  }

  void reset() { // Nulstilling af knap
    selected = false;
    currentColor = defaultColor;
  }
}
