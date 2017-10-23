class Rotater{
  float x,y,s,r;
  float R = random(255);
  float G = random(255);
  float B = random(255);
  Rotater(float x,float y,float r ,float s)
  {
    
    this.x = x;
    this.y = y;
    this.s = s;
    this.r = r;
  }
  
  void spin()
  {
    
    pushMatrix();
    translate(x,y);
    rotateX(radians(r));
    rotateY(radians(r));
    rotateZ(radians(r));
    
  }
  
  void display()
  {
    fill(R,G,B);
    rect(0,0,s,s);
    r+=y;
    popMatrix();
  }
}