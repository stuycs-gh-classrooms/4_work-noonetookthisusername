class Orb {


int size;
PVector p;
PVector v;
PVector a;
  
Orb(int x, int y, int s){
p = new PVector(x, y);
v = new PVector(0, 0);
a = new PVector(0, 0);
size = s;}

void display(){
  circle(p.x, p.y, size);
}

void run(){
v.x= v.x+a.x;
p.x=p.x+v.x;

}
void applyForce(PVector force){
a.x=a.x+force.x;
a.y=a.y+force.y;}







}
