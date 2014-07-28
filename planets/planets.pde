Mover m;
Attractor a;
final float G = 10;
 
void setup() {
  size(960,960);
  background(19,41,75);
  noStroke();
  m = new Mover();
  a = new Attractor();
}
 
void draw() {
  update();
  
  //a.display();
  m.display();
}

void update() {
  PVector attractiveForce = a.attract(m);
  m.applyForce(attractiveForce);
  m.update();   
}

void mouseClicked() {
  save("planets.png"); 
}

