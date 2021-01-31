class Dots {

   float centerX;
   float centerY;
   float angleZ;
   
   float pixelSize;
   float dotX = 0;
   
   //Dots (float tempX, float tempY, float tempZ, float tempPixelSize){
     Dots (){
     
     //centerX = tempX;
     //centerY = tempY;
     //angleZ = tempZ;
     //pixelSize = tempPixelSize;
   }
   
   void showDot(){
    pushMatrix();
    translate(centerX, centerY);
    rotate(radians(angleZ));
    rectMode(CENTER);
    noStroke();
    colorMode(HSB,height,100,100);
    fill(y,100,100);
    rectMode(CENTER);
    rect(dotX, centerY, 10, 10);
    popMatrix();
   }
   
   void move() {
    y = y + 5;
    dotX = dotX + spaceBetweenPixels;
    if (dotX > spaceBetweenPixels * pixelsByStrip / 2) {
      dotX = - spaceBetweenPixels * pixelsByStrip / 2;
    }
   }
}
