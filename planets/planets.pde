Mover[] movers;
Attractor a;

final float G = 2.4;
final int NUM_MOVERS = 3;
final int[] COLORS = { color(0,154,206), color(214, 37, 152), color(0, 130, 100) };
 
void setup() {
  size(960,960);
  background(0);
  noStroke();
  a = new Attractor();
  movers = new Mover[NUM_MOVERS];
  for(int i = 0; i < NUM_MOVERS; i++) {
    movers[i] = new Mover(400 + 200 * random(1), width/2 - 300 + (100 * random(1) - 50), 1,0,40, COLORS[i]);
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
//    a.update(); 
  }
}

void mouseClicked() {
  save("planets.tiff"); 
}

