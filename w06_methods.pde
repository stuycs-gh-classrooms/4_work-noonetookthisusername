void setup() {
  size(400,400);
  background(50);
  theThing(200 , 200, 1);
  theThing(100,100, 1);
  theThing(0,0,2);
  theThing(2, 200, 1);
}

void theThing (int cx, int cy, int mult)
{
fill(0,0,0);
triangle(mult*(cx+2), mult*(cy+17), mult*(cx+7), mult*(cy+17), mult*(cx+16), mult*(cy+17));

triangle(mult*(cx+16), mult*(cy+7), mult*(cx-7), mult*(cy+15), mult*(cx-3), mult*(cy+15));
fill(255,255,0);
triangle(mult*(cx-8), mult*(cy-15), mult*(cx-8), mult*(cy-10), mult*(cx-6), mult*(cy-11));

triangle (mult*(cx+9),mult*(cy-20), mult*(cx+11), mult*(cy-8), mult*(cx+6), mult*(cy-10));
fill(131,67,17);
triangle(mult*(cx-3), mult*(cy-5), mult*(cx-8), mult*(cy+17), mult*(cx-3), mult*(cy+15));

triangle(mult*(cx+7), mult*(cy+7), mult*(cx), mult*(cy+20), mult*(cx+7), mult*(cy+17));
fill(17,68,191);
rect(mult*(cx-7), mult*(cy+5), mult*4, mult*10, mult);
rect(mult*(cx+2), mult*(cy+5), mult*5, mult*12, mult);
fill(124,245,227);
ellipse(mult*cx, mult*cy, mult*20, mult*21);
arc(mult*(cx+3),mult*(cy+1),mult*5,mult*5,0,PI,CHORD);
fill(245,232,197);
ellipse(mult*cx, mult*(cy-3), mult*11, mult*7);
ellipse(mult*(cx+1), mult*(cy-8), mult*20, mult*13);
arc(mult*(cx-5), mult*(cy-9), mult*3, mult*2, PI, PI+PI+QUARTER_PI/3);
arc(mult*(cx+3), mult*(cy-9), mult*5, mult*3, PI+QUARTER_PI/4, PI+PI);
arc(mult*(cx-1), mult*(cy-6), mult*5, mult*3, 0, HALF_PI+QUARTER_PI);
}
