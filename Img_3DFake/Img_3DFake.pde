PImage img;
int c = 2 , cols , rows;
void setup()
{
  img = loadImage("flower.jpg");
  size(400,400,P3D);
  cols = width/c;
  rows = height/c;
}

void draw()
{
  background(255);
  img.loadPixels();
  for(int i = 0; i<cols;i++){
    for(int j = 0 ; j<rows ; j++){
      int x = i*c + c/2;
      int y = j*c + c/2;
      int loc = x +y*width;
      color cc = img.pixels[loc];
      
      float z = mouseX/(float)width*brightness(img.pixels[loc]) -100.0;
      
      
      pushMatrix();
      translate(x,y,z);
      fill(cc);
      noStroke();
      rectMode(CENTER);
      rect(0,0,c,c);
      popMatrix();
    }
  }
  
}