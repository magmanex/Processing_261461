Car []myCar;
Car []myCar2;
void setup()
{
  myCar = new Car[150];
  //myCar2 = new Car[100];
  size(300,300);
  for (int i = 0; i < myCar.length ; i++)
  {
    myCar[i] = new Car(color(i*2) , 0 , i*2,i/20.0);
  }
}

void draw()
{
  background(255);
  for(int i = 0;i < myCar.length ; i++)
  {
    myCar[i].move(10);
    myCar[i].display();
  }
}