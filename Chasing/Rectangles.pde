
class Rectangle {

   float centerX;
   float centerY;
   float angleZ;
   float size;
   
   Rectangle (float tempX, float tempY, float tempZ, float tempSize){
     
     centerX = tempX;
     centerY = tempY;
     angleZ = tempZ;
     size = tempSize;
   }
   
   void showStrip(){
    pushMatrix();
    translate(centerX,centerY);
    rotate(radians(angleZ));
    rectMode(CENTER);
    stroke(255);
    noFill();
    rect(0, 0, size, 10);
    popMatrix();
   }
}
