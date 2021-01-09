import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage; 
MidiBus myBus; // The MidiBus


ArrayList<Ball>balls;
int ballWidth;

void setup(){
  size(500,500);
  noStroke();
  balls = new ArrayList<Ball>();
  
  myBus = new MidiBus(this, 0, 1);

}

void draw(){
  background(255);
  ballWidth = int(random(20,50));
  for(int  i = balls.size() - 1; i >= 0 ; i--){
    Ball ball = balls.get(i);
    ball.move();
    ball.display();
    if(ball.finished()){
      balls.remove(i);
    }
    
  
  }
  println(balls.size());
}

void mousePressed(){
  balls.add(new Ball(mouseX, mouseY, ballWidth));

}

//void midiMessage(MidiMessage message) { 
//   // Print out some info on the midi message. 
//   println();
//   println("MidiMessage Data:");
//   println("--------");
//   println("Status Byte/MIDI Command:"+message.getStatus());
//   println("Param 0: "+(int)(message.getMessage()[0] & 0xFF));  
//   println("Param 1: "+(int)(message.getMessage()[1] & 0xFF));
//   println("Param 2: "+(int)(message.getMessage()[2] & 0xFF));
   
  
//  // Knob 16: xspeed
//  
  
//}
