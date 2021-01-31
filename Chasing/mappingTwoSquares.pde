void mappingTwoSquares(){
  
  Rectangle[] rect = new Rectangle[8];
  
  //float spaceBetweenStripes = width / 9;
  
  float stripLength = pixelsByStrip * spaceBetweenPixels + spaceBetweenPixels;
  float distFromCenter = stripLength / 4;
  
  float[] x = new float[8];
  float[] y = new float[8];
  float[] z = new float[8];
  
  // Calculate 'x-coordinate' center for stripes
  x[0] = width / 2 - distFromCenter;
  x[1] = width / 2 + distFromCenter;
  x[2] = x[0];
  x[3] = x[0] - 2 * distFromCenter;
  x[4] = x[1];
  x[5] = x[0] + 4 * distFromCenter;
  x[6] = x[1];
  x[7] = x[0];
  
  // Calculate 'y-coordinate' center for stripes
  y[0] = height / 2 - distFromCenter;
  y[1] = height / 2 + distFromCenter;
  y[2] = y[0] + 4 * distFromCenter;
  y[3] = y[1];
  y[4] = y[0]- 2 * distFromCenter;
  y[5] = y[0];
  y[6] = y[1];
  y[7] = y[0];
  
  // Calculate 'z-angle' rotation for stripes
  z[0] = 0;
  z[1] = 90;
  z[2] = 180;
  z[3] = 270;
  z[4] = z[0];
  z[5] = z[1];
  z[6] = z[2];
  z[7] = z[3];
  
  for (int i = 0; i <= 7; i++){
    rect[i] = new Rectangle(x[i], y[i], z[i], stripLength);
    rect[i].showStrip();
    
    opc.ledStrip(pixelsByStrip * i, pixelsByStrip, x[i], y[i], spaceBetweenPixels, radians(z[i]), false);
  }
}
