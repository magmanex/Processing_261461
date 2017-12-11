String s = "A long time ago \n must have done \n must be done";
            
float y;
PFont f;

void setup()
{
  size (300,300,P3D);
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  rotateX(PI/4);
  textSize(20);
  textAlign(CENTER);
  text(s,0,y);
  y--;
  

}