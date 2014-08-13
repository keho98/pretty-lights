float degAngle = 15;

void setup() {
  size(500,500);
  background(255);
  noStroke(); 
  fill(0);
}

void draw() {
  float angleInRadians = radians(degAngle);
  degAngle += 5;
  background(255);
  translate(width/2, height/2);
  rotate(angleInRadians);
  ellipse(50, 50, 20, 20);
}
