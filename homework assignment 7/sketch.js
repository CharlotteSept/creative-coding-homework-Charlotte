var movers = [];

function setup() {
  createCanvas(383, 200);
  randomSeed(1);
  for (var i = 0; i < 5; i++) {
    movers[i] = new Mover(random(1, 4), random(0, width), 0);
  }
}

function draw() {
  background(255);

  for (var i = 0; i < 5; i++) {

    var wind = createVector(0.001, 0);
    var gravity = createVector(0, 0.1*movers[i].mass);
    var antigravity = createVector(-0.001*movers[i].mass, -0.1*movers[i].mass);

     
    var c = 0.05;
    var friction = createVector (movers[i].velocity.x, movers[i].velocity.y);
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
    if (sq(mouseY-movers[i].position.y)+sq(mouseX-movers[i].position.x) < 64*sq(movers[i].mass)) {
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
  //when pressing ENTER, the movers are going up 

    if (keyIsPressed === true) {
      if( keyCode === ENTER){
        var up = createVector(0, -0.5*movers[i].mass);
        movers[i].applyForce(up);
      }
    }
  }
}




function Mover(m,  x,  y) {
  this.mass = m;
  this.position = createVector(x,y);
  this.velocity = createVector(0,0);
  this.acceleration = createVector(0,0);
}

Mover.prototype.applyForce = function (force) {
  var a = p5.Vector.div(force, this.mass);
  this.acceleration.add(a);
}     
                      
Mover.prototype.update = function () {
  this.velocity.add(this.acceleration);
  this.position.add(this.velocity);
  this.acceleration.mult(0);
}

Mover.prototype.display = function () {
  stroke(204, 255, 153);
  strokeWeight(0);
  fill(204,229,255);
  ellipse(this.position.x,this.position.y,this.mass*16,this.mass*16);
}

Mover.prototype.checkEdges = function () {

  if (this.position.x > width) {
    this.position.x = width;
    this.velocity.x *= -1;
  } else if (this.position.x < 0) {
    this.position.x = 0;
    this.velocity.x *= -1;
  }
   if (this.position.y > height-this.mass*8) {
    this.velocity.y *= -1;
    this.position.y = height-this.mass*8;
  }

}