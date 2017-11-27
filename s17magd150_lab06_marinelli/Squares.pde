class Squares {
  
  float x, y, radius, xSpeed, ySpeed, xDir, yDir;
  color fill; 
  
  
  
  
  
  
  Squares(){
    
    
    
    this(random(2, width - 70),
      random(2, height - 70),
       random(2,20));
  }
  
  Squares(float x, float y, float radius) {
    
    this.x = x;
    this.y = y;
    this.radius = radius;
    
    xSpeed = random(1, radius/7.0);
    ySpeed = random(1, radius/7.0);
    
    float theta = random(TWO_PI);
    xDir = cos(theta);
    yDir = sin(theta);
    
    fill = color(random(60,200),
    random(60, 250),
    80);
  }
    public String toString(){
      return "[ " +x + ", " + y + ", " + radius + " ]";}
  
  void draw(){
    move();
    
    pushStyle();
    noStroke();
    rectMode(CENTER);
    
    fill(fill);
    rect(x, y, width, height);
  if(mousePressed){
  background(0);}}
    
    void move() {
      x += xSpeed * xDir;
      y += ySpeed * yDir;
      
      if (x - radius<0||x+radius>width){
        xDir *= -1;
      }
      if(y - radius<0||y+radius>height){
        yDir *= -1;
      }
    }
}