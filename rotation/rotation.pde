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
  degAngle -= .01;
  float x = r * cos(theta);
  float y = r * sin(theta);
  r+= .5;
  theta += .05;
  translate(width/2 + x, height/2 + y);
  rotate(angleInRadians);
  ellipse(-15, -15, 15, 30);
}
