class BallUp {
  float x;
  float y;
  float w;
  float life = 255;
  float speedUp;
  
  BallUp(float tempX, float tempY, float tempW){
    x = tempX;
    y = tempY;
    w = tempW;
    speedUp = -5;
  }
  
  void moveUp(float gravityUp){
    speedUp = speedUp + gravityUp;
    y = y + speedUp;
    if(y < w/2){
      speedUp *= -0.95;
      y = w/2;
    }
  }

  void displayUp(){
    colorMode(HSB);
    fill(y,150,150, +life);
    noStroke();
    ellipse(x,y,w,w);
  }
  
  boolean finished(){
    life--;
    if (life < 0){
      return true;
    }
    else{
      return false;
    }
  }
}
