class Snake{
  
  ArrayList<PVector> body;
  int size_unit;
  int dir;
  
  Snake(int x, int y) {
    body = new ArrayList<PVector>();
    PVector pos = new PVector(x, y);
    body.add(pos);
    size_unit = 10;
  }
  
  void setDir(int ndir) {
    dir = ndir;
  }
  
  void show() {
    
    noStroke();
    fill(255);
    for(PVector p : body) {
      square(p.x, p.y, size_unit);
    }
    
  }
  
}
