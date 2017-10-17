float []x = new float[50];
float []y = new float[50];
float []s = new float[50];
void setup()
{
  size(300,300);
}

void draw()
{
  background(0);
  
  

    for(int j = 0 ;j<x.length-1;j++)
    {
      x[j] = x[j+1];
      y[j] = y[j+1];
    }
    x[x.length-1]=mouseX;
    y[y.length-1]=mouseY;
      for(int k = 0 ; k <x.length ;k++)
      {
        noStroke();
        fill(k*5,k*5,k*15);
        ellipse(x[k],y[k],k,k);
      }
    
   
  }