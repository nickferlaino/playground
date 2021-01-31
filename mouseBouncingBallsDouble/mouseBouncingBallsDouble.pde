import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage; 
MidiBus myBus; // The MidiBus

ArrayList<Ball>balls;
ArrayList<BallUp>ballsUp;

int ballWidth;
float gravity = 0.2;
float gravityUp = -0.2;

void setup(){
  size(500,500);
  noStroke();
  balls = new ArrayList<Ball>();
  ballsUp = new ArrayList<BallUp>();
  myBus = new MidiBus(this, 0, 1);
}

void draw(){
  background(255);
  
  for(int  i = balls.size() - 1; i >= 0 ; i--) {
   
    Ball ball = balls.get(i);
    ball.move(gravity);
    ball.display();
    
    if(ball.finished()){
      balls.remove(i);
    }
  } 
  
  for(int  j = ballsUp.size() - 1; j >= 0 ; j--) {
    
    BallUp ballUp = ballsUp.get(j);
    ballUp.moveUp(gravityUp);
    ballUp.displayUp();
    
    if(ballUp.finished()){
      ballsUp.remove(j);
    }
    
  }
}

void mousePressed(){
  ballWidth = int(random(10,30));
  balls.add(new Ball(mouseX, mouseY, ballWidth));
  
  ballWidth = int(random(50,80));
  ballsUp.add(new BallUp(mouseX, mouseY, ballWidth));
}
