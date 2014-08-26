import java.util.Random;
Random generator;
PImage img;

class Particle {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PImage img = null;
  
  float lifespan;
  float mass;

  Particle(PVector l) {
    img = loadImage("particle.png");   
    location = l.get();
    acceleration = new PVector();
    generator = new Random();
    float vx = (float) generator.nextGaussian()*0.3;
    float vy = (float) generator.nextGaussian()*0.3 - 1.0;
    velocity = new PVector(vx,vy);  
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
    imageMode(CENTER);
    tint(255,lifespan);
    image(img,location.x,location.y);
  }
  
  boolean isDead() {
    return lifespan < 0.0; 
  }
}
