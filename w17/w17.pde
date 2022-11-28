Ball b;
int score;
color SAFE_COLOR = color(0, 255, 255);
color COLLISION_COLOR = color(255, 0, 255);

Ball[] balls;

void setup() {
  size(600, 400);
  background(0);
  score = 0;

  balls = new Ball[10];
  setupBalls();
}//setup

void setupBalls() {
  for (int i=0; i<balls.length; i++) {
    balls[i] = new Ball();
  }//loop through array, creating new Ball objects
}//setupBalls


void draw() {
  background(0);
  int a = 0;
  while(a<10) {
    int x = 0;
    while(x<10){
      if(collisionCheck(balls[a], balls[x]) && a!=x){
      balls[a].c=COLLISION_COLOR;
      balls[x].c=COLLISION_COLOR;
      }
      else {
      balls[a].c=SAFE_COLOR;
      balls[x].c=SAFE_COLOR;
      }
      x++;
      

    }
    balls[a].display();
    balls[a].move();
    a++; 
  }
}//draw

void keyPressed() {
  int a=0;
  while (a<10) {
  if (key == ' ') {
    balls[a].reset();
  }//reset
  else if (key == CODED) {
    if (keyCode == UP) {
      balls[a].changeSpeed(0, -1);
    }//up
    else if (keyCode == DOWN) {
      balls[a].changeSpeed(0, 1);
    }//down
    else if (keyCode == LEFT) {
      balls[a].changeSpeed(-1, 0);
    }//left
    else if (keyCode == RIGHT) {
      balls[a].changeSpeed(1, 0);
    }//right
  }//non ASCII keys
  a++;
  }
}

void mousePressed() {
  int a=0;
  while (a<10){
  if ( balls[a].onBall(mouseX, mouseY) ) {
    score+= balls[a].getScoreValue();
    balls[a].reset();
    println(score);
  }//hit
  a++;
  }
}//mousePressed

  boolean collisionCheck(Ball uno, Ball dos) {
    return dist(uno.cx, uno.cy, dos.cx, dos.cy) <= uno.radius * 2;
  }
