class Land {
  
  int x, y;
  int state;
  int nextState;
  int landSize;
  
  
  Land(int lx,int ly, int size, int type ) {
    x = lx;
    y = ly;
    landSize =size;
    state = type;
    
  }
  
void display() {
  if (state == DIRT) {
  fill(DIRT_COLOR);
  }
    if (state == GRASS) {
  fill(GRASS_COLOR);
  }
    if (state == BURNT) {
  fill(BURNT_COLOR);
  }
    if (state == FIRE) {
  fill(FIRE_COLOR);
  }
  square(x, y, landSize);
}
  
void updateNextState(int a) {
  if (a == 1) {
     nextState = 2;   
  }
  if (a == 3) {
    nextState=1;
  
  }

}
  void changeState() {
  state = nextState;
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
