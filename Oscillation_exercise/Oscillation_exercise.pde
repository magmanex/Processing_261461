Breather [] b = new Breather[20];
void setup()
{
  size(300,300);
  for(int i = 0;i < b.length ; i++){
    b[i] = new Breather();
  }
}

void draw()
{
  background(255);
  for(int i = 0;i < b.length ; i++)
  {
    b[i].breath();
    b[i].display();
  }
}