// Purple Rain
// (138, 43, 266) Purple
// (230, 230, 250) Background

Drop[] drops = new Drop[1000];

void setup() {
  
  size(640, 360);
  
  for(int i = 0; i < drops.length; i ++) {
    drops[i] = new Drop();
  }
  
}

void draw() {
  
  background(230, 230, 250);
  
  for(Drop d : drops) {
    d.show();
  }
  
}
