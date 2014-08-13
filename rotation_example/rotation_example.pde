float degAngle = 15;
float r = 75;
float theta = 0;

void setup() {
  size(500,500);
  background(255);
  noStroke(); 
  fill(0);
}

void draw() {
  float angleInRadians = radians(degAngle);
  degAngle -= 3;
  float x = r * cos(theta);
  float y = r * sin(theta);
  theta += .05;
  background(255);
  translate(width/2 + x, height/2 + y);
  rotate(angleInRadians);
  rect(-15, -15, 30, 30);
}
