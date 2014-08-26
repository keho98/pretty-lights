ParticleSystem ps;

void setup() {
  size(640,640, P2D);
  ps = new ParticleSystem(new PVector(width/2, 50));
  
}

void draw() {
  blendMode(ADD);
  background(20);
  
  PVector g = new PVector(0,0.3);
  ps.applyForce(g);
  
  ps.addParticle();
  ps.addParticle();
  ps.run();
}

