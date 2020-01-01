Snake snake;
Bug bug;

int unitsize = 10;

void setup() {
  
  size(400, 400);
  snake = new Snake(width/2, height/2, unitsize);
  bug = new Bug(genPos(width) * unitsize, genPos(height) * unitsize, unitsize);
}

int genPos(int n) {
  return (int)random(n / unitsize);
}

void keyPressed() {
  if(key == CODED) {
    if(keyCode == UP) {
       if(snake.getDir() != 1) {
        snake.setDir(0);
       }
    } else if (keyCode == DOWN) {
      if(snake.getDir() != 0) {
        snake.setDir(1);
      }
    } else if (keyCode == LEFT) {
      if(snake.getDir() != 3) {
        snake.setDir(2);
      }
    } else if (keyCode == RIGHT) {
      if(snake.getDir() != 2) {
        snake.setDir(3);
      }
    }
  }
}

boolean getPoint() {
  PVector psnake = snake.getHead();
  PVector pbug = bug.getPos();
  if(psnake.x == pbug.x && psnake.y == pbug.y) {
    return true;
  }
  return false;
}  

void draw() {
  
  background(51);
  if(getPoint()) {
    bug = new Bug(genPos(width) * unitsize, genPos(height) * unitsize, unitsize);
    snake.addHead();
  }
  snake.show();
  bug.show();
  
}
