String [] headline = {"breaking news !!! " , "New jackma has gone..."};
PFont f ; 
float x;
int index = 0;

void setup()
{
  size(400,400);
  f = createFont("Arial" , 16 , true);
  x = width;
}

void draw()
{
  background(255);
  fill(0);
  textFont(f,16);
  text(headline[index] , x ,180);
  
  x--;
  
  float w = textWidth(headline[index]);
  if ( x < -w)
  {
    x = width;
    index = (index+1)%headline.length;
  }
}