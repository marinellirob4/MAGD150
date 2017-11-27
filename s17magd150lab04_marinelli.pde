int x = 0;
int y = 0;
int speed = 3;
int value = 90;
int back = 50;
int p = 0;
int numbr = 15;
int rg;
float x2,y2, radius, speedB;
float r, g, b, a;

char upKey,leftKey,downKey,rightKey;

boolean up,left,down,right;

void setup(){
  surface.setResizable(true);
  surface.setTitle("Bouncing Ball");
  pixelDensity(displayDensity());
  size(700,550);
  background(back);}{

 up = left = right = down = false;
  
  radius = min(width, height) / 9;
  upKey = 'w';
  leftKey = 'a';
  downKey = 's';
  rightKey = 'd';}{
  y2 = height/3.0;
  x2 = width/3.0;}
void draw(){
  background(back);
  
  speedB = 4;
  
  textSize(30);
  text("HELLO THERE GOVERNOR",width/5, (height/3)+20);
  
  //colored lines?
  fill(30,20,100);
  rg = 70;
  for(int z = 0; z < numbr/2; z++){
    rect(200,rg,200,10);
    rg+=90;}
  
  if(keyPressed){
    fill(160);
  
    textSize(90);
  
    text(key,width/2.0,height/4.0);}
y = y + speed;
x = x + speed;
  
  if((y>height)||(y<0)){
    speed = speed * -1;
    
  }
  if(x>width){
    speed = speed * -1;
  }
  stroke(0);
  fill(value);
  ellipse(x,100,80,80);
  if(keyPressed){
    textSize(50);
    println("STOP IT");
    text("WHAT ARE YOU DOING?",10,200);}
    else{text("good day",5,200);}
    
  stroke(0);
  fill(value);
  ellipse(50,y,70,70);
}
void mousePressed(){
  if(value==90){
    value=250;
    println("WHAT HAVE YOU DONE");
  }else{
    value=90;
  if (back==50){
    back=200;
  }else{
    back=50;}
}
}
void keyPressed(){
  if (back == 50){
    back = 150;
  }else{
    back = 50;
  }
}