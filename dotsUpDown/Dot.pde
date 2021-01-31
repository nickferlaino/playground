class Dot {
  float x;
  float y;
  float colour;
  float life = 300;
  float speed = 5;
  
  Dot(float tempX, float tempY, float tempColour){
    x = tempX;
    y = tempY;
    colour = tempColour;
  }

  void move(){
    speed = speed + changeSpeed;
    y = y + speed;
    if(y > height - dotHeight-50){
      speed *= -1;
      changeSpeed *= -1;
      //y = height - dotHeight;
    }
    
    else if(y < 0){
      speed *= -1;
      changeSpeed *= -1;
      y = dotHeight;
    }             
  }

  void display(){
    colorMode(HSB);
    fill(colour,150,150, +life);
    noStroke();
    //rectMode(CENTER);
    rect(x,y,dotWidth,dotHeight);
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
