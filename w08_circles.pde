int movingX;
int movingY;
int radius;
void CircleRow(int startX, int endX, int y, int d) {
while(startX<=endX){
fill(200);
circle(startX, y, d);
startX=startX+d;
}

}


void setup() {
size(500, 502);
background(255);
CircleRow(50,450,50,100);
movingX=50;
movingY=151;
radius=50;
}
void draw() {

noStroke();
fill(255);
rect(0, 101, 500, 400);
stroke(0);
fill(120);
circle(movingX, movingY, 2*radius);
if((movingX-radius)<=width && movingY<height)
{
movingX++;
}
else if((movingX-radius)>width && movingY<height)
{
movingX=(0-radius);
movingY=movingY+100;
movingX++;
}
else{
movingX=-50;
movingY=151;
movingX++;
}


  

}
