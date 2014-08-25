class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float lifespan;
  float mass;

  Particle(PVector l) {
    location = l.get();
    acceleration = new PVector();
    velocity = new PVector(random(-2,2),random(-4,0));
    lifespan = 255;
    mass = 1;
  }
  
  void run() {
    update();
    display();
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
    lifespan -= 2.0;
  }

  void display() {
    noStroke();
    fill(175, lifespan);
    ellipse(location.x,location.y,4,4);
  }
  
  boolean isDead() {
    return lifespan < 0.0; 
  }
}
