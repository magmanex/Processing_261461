class holy{
  float x;
  float y;
  float sR;
  float sL;
  boolean check;
  
  holy(float x_,float y_,float sizeR , float sizeL)
  {
    x= x_;
    y=y_;
    sR = sizeR;
    sL = sizeL;
    check = false;
  }
  
  void display()
  {
    fill(#FCDC1F);
    ellipse(x,y,sR,sL);
    fill(125);
    ellipse(x,y,sR/2,sL/2);
  }
}