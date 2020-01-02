class Drop {
  float x;
  float y;
  float len;
  float speed;
  
  Drop(){
    x = random(width);
    y = random(height / 2);
    len = random(6, 10);
    speed = random(4, 10);
  }
  
  void regen() {
    x = random(width);
    y = random(height / 2);
    len = random(6, 10);
    speed = random(4, 10);
  }
  
  void show() {
    y = y + speed;
    if(y > height) {
      regen();
    }
    stroke(138, 43, 266);
    line(x, y, x, y + len);
  }
  
}
