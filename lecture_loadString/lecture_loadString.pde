int [] data;

void setup()
{
  size(200,200);
  String [] stuff = loadStrings("test.txt");
  data = int(split(stuff[0] , ','));
  
}

void draw()
{
  background(255);
  stroke(0);
  for(int i = 0 ; i< data.length;i++)
  {
    fill (data[i]);
    rect(i*20,height,20,-data[i]);
  }
  noLoop();
}