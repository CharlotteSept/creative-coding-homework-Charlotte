// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;

  Mover(float m, float x , float y) {
    mass = m;
    location = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void applyForce(PVector force) {
    PVector a = PVector.div(force,mass);
    acceleration.add(a);
  }                                                                                                                                                                                
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(204, 255, 153);
    strokeWeight(0);
    fill(204,229,255,200);
    ellipse(location.x,location.y,mass*16,mass*16);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }

    if (location.y > height-mass*8) {
      velocity.y *= -1;
      location.y = height-mass*8;
    }

  }

}



