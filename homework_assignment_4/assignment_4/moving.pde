// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover[] movers = new Mover[5];

void setup() {
  size(383, 200);
  randomSeed(1);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 4), random(width), 0);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(0.000001, 0);
    PVector gravity = new PVector(0, 0.1*movers[i].mass);
     PVector antigravity = new PVector(0, -0.1*movers[i].mass);
     
     float c = 0.05;
    PVector friction = movers[i].velocity.get();
    friction.mult(-1); 
    friction.normalize();
    friction.mult(c);

    movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  //when mouse is on the movers, the movers are gonna stop moving in the air  
    if (pow(mouseY-movers[i].location.y,2)+pow(mouseX-movers[i].location.x,2)<64*pow(movers[i].mass,2)){
    movers[i].velocity.y=0;
    movers[i].applyForce(antigravity);
  }else{
   movers[i].applyForce(friction);
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
  //when pressing space, the movers are going up 
  if (keyPressed){
    if(key==' '){
    PVector up = new PVector(0, -0.5*movers[i].mass);
    movers[i].applyForce(up);
    }else{
    }
  }
  }
}
