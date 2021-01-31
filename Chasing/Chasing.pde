//Initialize Open Pixel Control client for Processing
OPC opc;

//Define stripes properties
int pixelsByStrip = 60;
float spaceBetweenPixels = width / 20;

float y = 0;

Dots[] dot = new Dots[8];


void setup(){
  size(800, 800);
  opc = new OPC(this, "127.0.0.1", 7890);
  
}

void draw(){
  background(0);
  mappingTwoSquares();
  
  for (int i = 0; i <= 7; i++){
    dot[i] = new Dots();
    dot[i].showDot();
    dot[i].move();
  }
  
  //move();
  //display();
}

void move() {
  y = y + 5;
  if (y > height) {
    y = 0;
  }
}

void display() {
  colorMode(HSB,height,100,100);
  fill(y,100,100);
  rectMode(CENTER);
  rect(mouseX,mouseY,10,10);
}
  
