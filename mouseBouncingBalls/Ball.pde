class Ball {
  float x;
  float y;
  float speed;
  float newSpeed;
  float speedChange = 0.1;
  float gravity;
  float w;
  float life = 255;
  
  Ball(float tempX, float tempY, float tempW){
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
    newSpeed = 0;
    gravity = 0.2;
  
  }

  void move(){
    speed = newSpeed + gravity;
    y = y + speed;
    if(y > height - w/2){
      speed *= -0.95;
      y = height - w/2;
    }
    
  //  if ((int)(message.getMessage()[1] & 0xFF) == 16){
  //   float speed = map( (int)(message.getMessage()[2] & 0xFF), 0, 127, 0, 5);
  //   newSpeed = speed;
     
     
     
  //}
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
  
  void update(){
    speed += speedChange;
  
  }



}
