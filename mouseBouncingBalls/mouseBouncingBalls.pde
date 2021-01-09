import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage; 
MidiBus myBus; // The MidiBus

ArrayList<Ball>balls;
int ballWidth;
float gravity = 0.2;

void setup(){
  size(500,500);
  noStroke();
  balls = new ArrayList<Ball>();
  
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
}

void mousePressed(){
  ballWidth = int(random(20,50));
  balls.add(new Ball(mouseX, mouseY, ballWidth));
}
