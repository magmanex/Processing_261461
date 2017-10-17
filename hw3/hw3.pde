Crosshair pao;
Enemy enemy;
void setup()
{
  pao = new Crosshair();
  enemy = new Enemy(random(width),random(height));
  size(700,700);
  
}

void draw()
{
  background(125);
  pao.display();
  enemy.display();
}