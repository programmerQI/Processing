float a = 0;
ArrayList<Box> sponge;
void setup() {
  
  size(400, 400, P3D);
  sponge = new ArrayList<Box>();
  Box box = new Box(0, 0, 0, 200);
  sponge.add(box);
  
}

void mousePressed() {
  
  ArrayList<Box> boxes_ngen = new ArrayList<Box>();
  for(Box b : sponge) {
    ArrayList<Box> ngen = b.generate();
    boxes_ngen.addAll(ngen);
  }
  sponge = boxes_ngen;
}

void draw() {
  
  background(51);
  stroke(255);
  noFill();
  lights();
  
  translate(width/2, height/2);
  rotateX(a);
  rotateY(a * 0.4);
  rotateZ(a * 0.1);
  for(Box b : sponge) {
    b.show();
  }
  
  a += 0.01;
}
