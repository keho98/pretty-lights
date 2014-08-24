class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float lifespan;
  float mass;

  Particle(PVector l) {
    location = l.get();
    acceleration = new PVector();
    velocity = new PVector(random(-1,1),random(-2,0));
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
    lifespan -= 2.0;
  }

  void display() {
    stroke(0, lifespan);
    fill(175, lifespan);
    ellipse(location.x,location.y,16,16);
  }
  
  boolean isDead() {
    return lifespan < 0.0; 
  }
}
