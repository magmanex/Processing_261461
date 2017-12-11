String m = "thist text os spinning";
float t;

void setup()
{
  size (300,300,P3D);
}

void draw()
{
  background(0,255,255);
  fill(0);
  translate(width/2,height/2);
  rotate(t);
  textAlign(CENTER);
  textSize(20);
  text(m,0,0);
  t += 0.01;
}