Planet[] p = new Planet[8];

void setup()
{
  size(400,400);
  smooth();
  for ( int i = 0 ; i<p.length; i++) p[i] = new Planet(20+i*10,i+8);
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  fill(255,150,0);
  ellipse(0,0,20,20);
  for(int i = 0 ; i < p.length ; i++)
  {
    p[i].update();
    p[i].display();
    
  }
}