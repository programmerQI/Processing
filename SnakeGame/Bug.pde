class Bug {
  
  PVector pos;
  int unitsize;
  
  Bug(int x, int y, int size) {
    pos = new PVector(x, y);
    unitsize = size;
  }
  
  PVector getPos() {
    return pos;
  }
  
  void show() {
    fill(125);
    square(pos.x, pos.y, unitsize);
  }
  
}
