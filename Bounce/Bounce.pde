/**
 * Bounce. 
 * 
 * When the shape hits the edge of the window, it reverses its direction. 
 */

import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage; //Import

MidiBus myBus; // The MidiBus
 
 
int rad = 60;        // Width of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 3;  // Speed of the shape
float yspeed = 3;  // Speed of the shape

float newxspeed = xspeed;
float newyspeed = yspeed;
float newRad = rad;

float hue;
float newHue = 100;
float bright;
float newBright = 100;
float saturation;
float newSaturation = 100;


int xdirection = 1;  // Left or Right
int ydirection = 1;  // Top to Bottom


void setup() {
  
  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
  myBus = new MidiBus(this, 0, 0); // Create a new MidiBus object
  
  size(640, 360);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/2;
  ypos = height/2;
}





void draw() {
  background(102);
  
  // Update the position of the shape
  
  
  xpos = xpos + ( newxspeed * xdirection );
  ypos = ypos + ( newyspeed * ydirection );
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-newRad || xpos < newRad) {
    xdirection *= -1;
  }
  if (ypos > height-newRad || ypos < newRad) {
    ydirection *= -1;
  }

  // Draw the shape
  colorMode(HSB);
  fill(newHue, newSaturation, newBright);
  ellipse(xpos, ypos, newRad, newRad);
  
}
