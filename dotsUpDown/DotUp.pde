class DotUp {
  float x;
  float y;
  float colour;
  float life = 300;
  float speedUp = -5;
  
  DotUp(float tempX, float tempY, float tempColour){
    x = tempX;
    y = tempY;
    colour = tempColour;
  }
  
  void moveUp(){
    speedUp = speedUp - changeSpeed;
    y = y + speedUp;
    if(y < 0){
      speedUp *= -1;
      y = 0;
    }
    else if(y > height - dotHeight-50){
      speedUp *= -1;
      y = height - dotHeight;
    }
  }

  void displayUp(){
    colorMode(HSB);
    fill(colour,150,150, +life);
    noStroke();
    //rectMode(CENTER);
    rect(x,y,dotWidth,10);
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
