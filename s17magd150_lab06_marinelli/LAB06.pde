//The widget will be the main part of
//this screensaver.
//The goal is to create squares moving across the screen,
//while being able to click the mouse to
//interact with the "screensaver."


Squares[] ws;
int count;

void setup(){
  surface.setResizable(true);
  surface.setTitle("90's Screensaver");
  frameRate(60);
  size(500,500);
  background(22);
  colorMode(HSB, 330,10,100);
  
  count = min(width, height) / 8;
  ws = new Squares[count];
  for(int i= 0; i < count; ++i) {
    ws[i] = new Squares();
  }
}
  
  
void draw(){
  FunctionUNO();
  FunctionEnd();
  
  //squares:
  for(int i = 2; i < count; ++i) {
    ws[i].draw();}
    if(mousePressed){
      FunctionUNO();}
}

void FunctionUNO(){
  pushStyle();
  noStroke();
  if(mousePressed) {
  //the triangles will change color depending on mouse position.
    fill(190, map(mouseX, 0, width, 0, 255),
      map(mouseY, 0, height, 0, 255), 199);
     triangle(mouseX, mouseY, 70, pmouseY, 450, 500);
     fill(map(mouseX, 0, width, 0, 255),
       map(mouseY, 0, height, 0, 255),
       201,304);
       triangle(mouseX, mouseY,60 ,70 , 20, 20);
       triangle(mouseX, mouseY, 200,500, 500,20);
       ellipse(pmouseX, pmouseY, 30,30);
       ellipse(230, pmouseY, 60,60);
       ellipse(pmouseX, 200, 90,90);
  }} 
  void FunctionEnd(){
    //By pressing any key, you can close the window.
    if(keyPressed){
    exit();}}