class Attractor implements Displayable{
  // Our Attractor is a simple object that doesn’t move.
  // We just need a mass and a location.
  float mass;
  PVector location;

  Attractor() {
    location = new PVector(width/2,height/2);
    mass = 20;
  }
  
  PVector attract(Mover m) {
  
    // What’s the force’s direction?
    PVector force = PVector.sub(location,m.location);
    float distance = force.mag();
    distance = constrain(distance,5,25);
    force.normalize();
    //[offset-down] What’s the force’s magnitude?
    float strength = (G * mass * m.mass) / (distance * distance);
    force.mult(strength);
  
    // Return the force so that it can be applied!
    return force;
  }

  void display() {
    fill(175,200);
    ellipse(location.x,location.y,mass*2,mass*2);
  }
}
