class Mover implements Displayable {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float maxVel;
  float mass;
  int colorVal;

  Mover() {
    location = new PVector(400,width/2 -250);
    velocity = new PVector(1,0);
    acceleration = new PVector(0,0);
    mass = 4;
    colorVal = color(255,255,255);
  }
  
  Mover(int posX, int posY, int velX, int velY, int mass, int colorVal) {
    location = new PVector(400,width/2 -150);
    velocity = new PVector(1,0);
    acceleration = new PVector(0,0);
    mass = 4;
  }


  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  void display() {
    fill(colorVal);
    ellipse(location.x,location.y,2,2);
  }
  
  void applyForce(PVector force) {
    // Making a copy of the PVector before using it!
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}
