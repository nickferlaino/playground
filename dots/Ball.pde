class Ball {
  float x;
  float y;
  float w;
  float life = 255;
  float speed;
  
  Ball(float tempX, float tempY, float tempW){
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 5;
  }

  void move(float gravity){
    speed = speed + gravity;
    y = y + speed;
    if(y > height - w/2){
      speed *= -0.95;
      y = height - w/2;
    }
    println(speed);
  }

  void display(){
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
