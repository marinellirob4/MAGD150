//This code will simulate bees flying when the mouse is moved.
//The flowers should also respond (rotate, change size, etc.)
//when the bees draw closer to them.

Bees[] bees = new Bees[100];
void setup() {
   size(640,360);
  surface.setTitle("NOT THE BEES");
  for (int i = 0; i < bees.length; i++){
    bees[i] = new Bees();
  }
 
}

void draw() {
  background(0,255,100,90);
  noStroke();
  fill(200,30,10);
  rect(30,90,40,40);
  scale(0.9);
  rect(30,90,40,40);
  noStroke();
  fill(200,200,0);
  ellipse(30,300,30,30);
  fill(200,20,20);
  ellipse(30,270,30,30);
  fill(255,255,0);
  ellipse(mouseX,mouseY,90,90);
  fill(255);
  ellipse(mouseX-50,mouseY+10,40,40);
  ellipse(mouseX-40,mouseY-20,40,40);
  ellipse(mouseX-10, mouseY-40, 40,40);
  ellipse(mouseX+45,mouseY,40,40);
  ellipse(mouseX,mouseY+50,40,40);
  ellipse(mouseX-35,mouseY+25,40,40);
  ellipse(mouseX+25,mouseY-35,40,40);
  ellipse(mouseX+40,mouseY+30,40,40);
  translate(50,220);
  ellipse(0,0,30,30);
  translate(50,100);
  ellipse(0,0,30,30);
  translate(80,20);
  ellipse(0,0,90,90);
  fill(90,20,100);
  translate(100,20);
  ellipse(0,0,60,60);
  translate(90,10);
  ellipse(0,0,90,90);
  scale(0.5);
  ellipse(180,190,100,100);
  //for some reason this code is also affecting the code below,
  //and I have no idea why.

  
for (int i = 0; i < bees.length; i++) {
  bees[i].update();
  bees[i].display();
  }}