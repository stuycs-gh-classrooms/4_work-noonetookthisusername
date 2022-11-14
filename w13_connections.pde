int[] xvals;
int[] yvals;
int numPoints;
void setup(){
size(600, 400);
background(255);


 xvals = new int[100];
 yvals = new int[100];
 numPoints = 10;
 makeLines(xvals, yvals, numPoints);
drawLines(xvals, yvals);
}


void draw(){

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
int count=0;
while (count<numPoints-1 && count<numPoints-1){
line(xs[count], ys[count], xs[count+1], ys[count+1]);
count++;
}}

