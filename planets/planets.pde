Mover[] movers;
Attractor a;

final float G = 2.4;
final int NUM_MOVERS = 1;
 
void setup() {
  size(960,960);
  background(147,23,59);
  noStroke();
  a = new Attractor();
  movers = new Mover[NUM_MOVERS];
  for(int i = 0; i < NUM_MOVERS; i++) {
    movers[i] = new Mover();
  } 
}
 
void draw() {
  update();
//  a.display(); 
  for(int i = 0; i < NUM_MOVERS; i++) {
    movers[i].display(); 
  }
}

void update() {
  for(int i = 0; i < NUM_MOVERS; i++) {
    PVector attractiveForce = a.attract(movers[i]);
    movers[i].applyForce(attractiveForce);
    movers[i].update();   
  }
}

void mouseClicked() {
  save("planets.tiff"); 
}

