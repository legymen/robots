class Robot {

  float xpos;
  color c;
  String name;

  Robot(float _xpos, color _c, String _name) {  
    xpos = _xpos;
    c = _c;
    name = _name;
  }

  void render() {
    rectMode(CORNER);
    fill(c);
    rect(xpos, height - 110, 50, 100);
  }

  void sayHello() {
    fill(255);
    ellipse(xpos+25, height - 150, 200, 50);
    textAlign(CENTER);
    fill(0);
    text("Hi, my name is " + name ,xpos+25, height - 150);
  }
}
