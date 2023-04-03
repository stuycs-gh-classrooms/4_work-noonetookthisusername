Orb uno;
Orb dos;
PVector gravity;
PVector wind;
int s1;
int s2;

void setup(){
  size (500, 500);
  s1= 20;
  s2= 30;
uno = new Orb(int(random(width)), int(random(height/2)), s1);
dos = new Orb(int(random(width)), int(random(height/2)), s2);
gravity = new PVector(0, 1);
wind = new PVector(1, 0);}


void draw(){
background(100);
uno.display();
dos.display();
uno.applyForce(gravity);
uno.run();
dos.applyForce(wind);
dos.run();

println(uno.v);}
