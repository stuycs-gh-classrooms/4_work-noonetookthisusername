int[] xvals;
int[] yvals;
int numPoints;
int counter;
void setup(){
size(600, 400);
background(0);


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

   
   

}}
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
