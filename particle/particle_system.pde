ParticleSystem ps;

void setup() {
  size(640,640, P2D);
  ps = new ParticleSystem(new PVector(width/2, height/2));
  
}

void draw() {
  blendMode(ADD);
  background(20);
  
  PVector g = new PVector(0,0.01);
  ps.applyForce(g);
  
  ps.addParticle();
  ps.run();
}

