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
  square(x, y, landSize);
}
  
void updateNextState(int a) {
  if (a == 1) {
     a = 2;   
  }
  if (a== 3 && Land[this-1].state==0) {
    a=1;
  
  
  }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
