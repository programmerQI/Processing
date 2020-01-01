Snake snake;

void setup() {
  
  size(400, 400);
  snake = new Snake(width/2, height/2);
  
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) {
      snake.setDir(0);
    } else if (keyCode == DOWN) {
      snake.setDir(1);
    } else if (keyCode == RIGHT) {
      snake.setDir(2);
    } else if (keyCode == LEFT) {
      snake.setDir(3);
    }
  }
}

void draw() {
  
  background(51);
  snake.show();
  
}
