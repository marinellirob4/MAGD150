class Bees {
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  //maximum speed of the bees
  float topspeed;
  
  Bees(){
    position = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    topspeed = 6;
  }
  //everytime the 
  void update(){
    PVector mouse = new PVector(mouseX,mouseY);
    acceleration = PVector.sub(mouse,position);
    //acceleration.setMag(0.2);
    acceleration.normalize();
    acceleration.mult(0.2);
  
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);}
  

  void display(){
    stroke(0);
    rotate(HALF_PI/2);
    strokeWeight(2);
    fill(255,255,0);
    ellipse(position.x, position.y, 55,48);
    fill(255);
    ellipse(position.x,position.y-25,10,50);
    fill(0);
    strokeWeight(4);
    line(position.x,position.y,position.x+10,position.y+30);
    fill(255);
    triangle(position.x-50, position.y-3,position.x,position.y+20,position.x-4,position.y);
   
  }}