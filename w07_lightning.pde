



void drawLightning(int x, int y, int numParts) {

  
  line (x, y, nextx, nexty);
  x=nextx;
  y=nexty;
  a=a+1;

}

void setup() {
  size (500, 500);
  background (23, 45, 60);
  float nextx = random (x-20, x+20);
  int nexty = a*(500/numParts);
  int a = 1;
  while (nexty<500) {
  drawLightning(200, 0, 20);
  }
}

}
