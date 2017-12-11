float r = 100;
PFont f;
String m = "text along curve";
float i;
void setup()
{
  size (300,300,P3D);
  f = createFont("Arial" , 30 , true);
  textFont(f);
  textAlign(CENTER);
  smooth(); 
}

void draw()
{
  
  background(255);
  translate(width/2,height/2);
  noFill();
  ellipse(0,0,r*2,r*2);
  float arc = 0;
  rotate(i);
  i+=0.11;
  for(int i=0 ; i < m.length() ; i++)
  {
    float w = textWidth(m.charAt(i));
    arc += w/2;
    float t = arc/r +PI;
    pushMatrix();
    translate(r*cos(t),r*sin(t));
    rotate(t+PI/2);

    fill(0,100);
    fill(0);
    text(m.charAt(i),0,0);
    popMatrix();
    arc += w/2;
  }
}