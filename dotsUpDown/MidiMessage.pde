void midiMessage(MidiMessage message) { 
   // Print out some info on the midi message. 
   println();
   println("MidiMessage Data:");
   println("--------");
   println("Status Byte/MIDI Command:"+message.getStatus());
   println("Param 0: "+(int)(message.getMessage()[0] & 0xFF));  
   println("Param 1: "+(int)(message.getMessage()[1] & 0xFF));
   println("Param 2: "+(int)(message.getMessage()[2] & 0xFF));
   
  // Slider 0: Speed in the y-axis
  if ((int)(message.getMessage()[1] & 0xFF) == 0){
    changeSpeed = map((int)(message.getMessage()[2] & 0xFF), 0, 127, 0.5, 2.0);
    
  }
  
//  // Slider 1: Speed in the y-axis
//  //if ((int)(message.getMessage()[1] & 0xFF) == 1){
//  //  float yspeed = map( (int)(message.getMessage()[2] & 0xFF), 0, 127, 0.0, 5.0);
//  //  println("yspeed: "+yspeed);
//  //  newyspeed = yspeed;    
//  //}
  
  
  //Knob 16: Colour
  if ((int)(message.getMessage()[1] & 0xFF) == 16){
     selectColour = map( (int)(message.getMessage()[2] & 0xFF), 0, 127, 0, width-11);
  }
  
//  // Knob 17: hue
//  //if ((int)(message.getMessage()[1] & 0xFF) == 17){
//  //   float hue = map( (int)(message.getMessage()[2] & 0xFF), 0, 127, 0, 360);
//  //   newHue = hue;
//  //}
  
//  // Knob 18: saturation
//  //if ((int)(message.getMessage()[1] & 0xFF) == 18){
//  //   float saturation = map( (int)(message.getMessage()[2] & 0xFF), 0, 127, 0, 360);
//  //   newSaturation = saturation;
//  //}
  
//  // Knob 19: bright
//  //if ((int)(message.getMessage()[1] & 0xFF) == 19){
//  //   float bright = map( (int)(message.getMessage()[2] & 0xFF), 0, 127, 0, 360);
//  //   newBright = bright;
//  //}
  
//  // button 43: stop
//  //if ((int)(message.getMessage()[1] & 0xFF) == 42 && (int)(message.getMessage()[2] & 0xFF) == 127){
//  //   newxspeed = 0;
//  //   newyspeed = 0;
//  //}
  
//  // button 44: play
//  //if ((int)(message.getMessage()[1] & 0xFF) == 41 && (int)(message.getMessage()[2] & 0xFF) == 127){
//  //   newxspeed = 3;
//  //   newyspeed = 3;
//  //}

// button 45: rec
  if ((int)(message.getMessage()[1] & 0xFF) == 45 && (int)(message.getMessage()[2] & 0xFF) == 127){
     doubleDotUp = true;
  }
}
