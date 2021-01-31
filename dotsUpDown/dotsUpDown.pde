import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage; 
MidiBus myBus; // The MidiBus

ArrayList<Dot>dots;
ArrayList<DotUp>dotsUp;

int numOfStrips = 16;
float dotWidth = 600 / numOfStrips;
float changeSpeed = 0;
boolean doubleDotUp = false;
float dotHeight = 10;
float selectColour = 0;

void setup(){
  size(600,600);
  noStroke();
  dots = new ArrayList<Dot>();
  dotsUp = new ArrayList<DotUp>();
  myBus = new MidiBus(this, 0, 1);
}

void draw(){
  
  background(0);
  
  for(int  i = dots.size() - 1; i >= 0 ; i--) {
   
    Dot dot = dots.get(i);
    dot.move();
    dot.display();
    
    if(dot.finished()){
      dots.remove(i);
    }
  } 
  
  for(int  j = dotsUp.size() - 1; j >= 0 ; j--) {
    
    DotUp dotUp = dotsUp.get(j);
    dotUp.moveUp();
    dotUp.displayUp();
    
    if(dotUp.finished()){
      dotsUp.remove(j);
    }  
  }
  
  for (int col = 1; col <= numOfStrips; col++){
    stroke(0);
    strokeWeight(4);
    line(dotWidth * col, 0, dotWidth * col, height);    
  }
  
  for (int i = 0; i<= width; i++){
   colorMode(HSB,360,100,100);
   float degrade = map(i,0,width,0,360);
   stroke(degrade,100,100);
   line(i,height-50, i, height); 
  }   
  
   stroke(255);
   strokeWeight(1);
   noFill();
   rect(selectColour, height-51, 10, height);
}

void mouseDragged(){
int mouseCol = 0;
color colour = int(map(selectColour, 0, width - 11, 0, 360));

  for (int col = 1; col <= numOfStrips; col++){
    if (mouseX > dotWidth * (col - 1) && mouseX < dotWidth * col){
      mouseCol = col;
    }
  }
  
  //dotWidth = int(random(10,30));
  dots.add(new Dot((mouseCol - 1) * dotWidth, mouseY, colour));
  
  if (doubleDotUp){
  //dotWidth = int(random(50,80));
  dotsUp.add(new DotUp((mouseCol - 1) * dotWidth, mouseY, colour));
  }
}
