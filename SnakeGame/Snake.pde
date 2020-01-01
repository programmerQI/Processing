class Snake{
  
  ArrayList<PVector> body;
  int unitsize;
  int dir;
  int timer;
  int speed = 50;
  
  Snake(int x, int y, int size) {
    body = new ArrayList<PVector>();
    PVector pos = new PVector(x, y);
    body.add(pos);
    unitsize = size;
    timer = 0;
  }
  
  void setDir(int ndir) {
    dir = ndir;
  }
  
  int getDir() {
    return dir;
  }
  
  void removeTail() {
    body.remove(0);
  }
  
  void addHead() {
    int ofs = unitsize;
    int hid = body.size() - 1;
    PVector hpv = body.get(hid);
    PVector npv;
    if(dir == 0) {
      npv = new PVector(hpv.x, (hpv.y - ofs) % height);
    } else if (dir == 1) {
      npv = new PVector(hpv.x, (hpv.y + ofs) % height);
    } else if (dir == 2) {
      npv = new PVector((hpv.x - ofs) % width, hpv.y);
    } else {
      npv = new PVector((hpv.x + ofs) % width, hpv.y);
    }
    body.add(npv);
  }
  
  PVector getHead() {
    int hid = body.size() - 1;
    PVector hpb = body.get(hid);
    return hpb;
  }
  
  void show() {
    
    print(dir);
    
    noStroke();
    fill(255);
    for(int i = body.size() - 1; i >= 0; i --) {
      PVector pos = body.get(i);
      square(pos.x, pos.y, unitsize);
    }
    
    if(timer == speed) {
      addHead();
      removeTail();
      timer = 0;
    }
    
    timer = timer + 1;
    
  }
  
}
