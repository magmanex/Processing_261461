PFont f;
PFont f2;
String [] s  = PFont.list();

void setup()
{
  size(300,300);
  f = createFont("Arial" ,20 , true);
  //for (int i = 0 ; i<s.length ; i++)println(s[i]);
}

void draw()
{
  background(255);
  textFont(f,20);
  fill(255,0,0);
  line(0,height/2,width,height/2);
  text("Heeeeee lloooooo" , width/2,height/2);
  
  fill(0,255,0);
  f2 = createFont("Zapfino" , 20 , true);
  textFont(f2,19);
  text("Hell",mouseX,mouseY);
}