//Initialize Open Pixel Control client for Processing
OPC opc;

//Define stripes properties
int pixelsByStrip = 60;
float spaceBetweenPixels = width / 20;

//Define geometry properties
float distBetweenStripes = spaceBetweenPixels * 20;


float dotX = 0;
float y = 0;

Dots[] dot = new Dots[8];


void setup(){
  size(800, 800);
  opc = new OPC(this, "127.0.0.1", 7890);
  
  //Lo que quiero es que cada dot se mueva dentro de los rectángulos
  //O sea que cada uno tenga el y[i] y el z[i] correspondiente
  
  //Pero al inicializar los dot, como tomo el parámetro y o z del objeto rect[i]?
  
  for (int i = 0; i <= 7; i++){
    dot[i] = new Dots(dotX, i * 20);
  }
}

void draw(){
  background(0);
  mappingTwoSquares();
  //mappingTriangleAmp();
  
  for (int i = 0; i <= 7; i++){
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
  
