int[] xvals;
int[] yvals;
int numpoints;
void setup(){
size(600, 400);
background(0);

 xvals = new int[100];
 yvals = new int[100];
 numPoints = 0;
}
void makeLines(int[] xs, int[] ys,  int points){
xs = new int[points];
int count=0;
while(count<points){
xs[count] = random(width);
ys[count] = random(height);
count++;
}
}

void drawLines(int[] xs, int[] ys){
int count=0;
while (count<points-1){
line(xs[count], ys[count], xs[count+1], ys[count+1]);
count++;
}


makeLines(xvals, yvals, 10);
drawLines(xvals, yvals);

//dk what's wrong
