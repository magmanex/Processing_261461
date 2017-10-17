Stripe []stripe = new Stripe[40];
void setup()
{
  size(700,300);
  for(int i = 0;i<stripe.length;i++)
  {
    stripe[i] = new Stripe();
  }
}
void draw()
{
  background(100);
  for(int i = 0;i<stripe.length ;i++)
  {
    stripe[i].rollover(mouseX,mouseY);
    stripe[i].move();
    stripe[i].display();
  }
}