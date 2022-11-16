int[] xvals;
int[] yvals;
int numPoints;
int counter;
void setup(){
size(600, 400);
background(0);

//can't get movelines to work
 xvals = new int[10000];
 yvals = new int[10000];
 numPoints = 10;
 counter = 1;
drawLines(xvals, yvals);

}


void draw(){ 
 if (mousePressed == true && counter < xvals.length && counter < yvals.length) {
   xvals[counter]=mouseX;
   yvals[counter]=mouseY;
    xvals[0]=mouseX;
   yvals[0]=mouseY;
   drawLines(xvals, yvals);
   counter++;


}
 }
void makeLines(int[] xs, int[] ys,  int points){
int count=0;
while(count<points){
xs[count] = int(random(width));
ys[count] = int(random(height));
count++;
}
}

void drawLines(int[] xs, int[] ys){

stroke(255);
line(xs[counter-1], ys[counter-1], xs[counter], ys[counter]);
}

void keyPressed() {
  if (key == 'c'){
  background(0);}
  if (key == CODED) {
    if (keyCode == UP) {
      moveLines(xvals, yvals, 0, -1);
    }
    if (keyCode == DOWN) {
      moveLines(xvals, yvals, 0, 1);}
    if (keyCode == LEFT) {
      moveLines(xvals, yvals, -1, 0);}
    if (keyCode == RIGHT) {
      moveLines(xvals, yvals, 1, 0);}}}
void moveLines(int[] xs, int[] ys, int xMod, int yMod){
  int x = 0;
  while (x < xs.length)
  {
  xs[x]=xs[x]+xMod;
  if (x < ys.length)
  {
  ys[x]=ys[x]+yMod;
  }
  x++;
}
background(0);
counter = 1;
while (counter > 7){
  stroke(255);
line(xs[counter-1], ys[counter-1], xs[counter], ys[counter]);
counter++;
}
}
