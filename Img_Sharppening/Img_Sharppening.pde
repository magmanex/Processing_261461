int w = 120;
PImage img;
float [] [] matrix = {{-1,-1,-1} , 
                      {-1,9,-1} , 
                      {-1,-1,-1}};

void setup()
{
  size(400,400);
  img = loadImage("flower.jpg");
}

void draw()
{
  image(img ,0,0);
  int xstart = constrain(mouseX - w/2 , 0 , img.width);
  int xend = constrain(mouseX+w/2 , 0 , img.width);
  int ystart = constrain(mouseY - w/2 , 0 , img.height);
  int yend = constrain(mouseY+w/2 , 0 , img.height);
  
  int matrixsize = 3;
  
  loadPixels();
  for(int x = xstart ; x<xend ; x++)
  {
    for(int y = ystart ; y<yend ; y++)
    {
      color c = convolution(x , y , matrix , matrixsize ,img);
      int loc = x+ y*img.width;
      pixels[loc] = c;
    }
  }
  updatePixels();
  
}

color convolution(int x , int y , float [][] matrix , int matrixsize , PImage img)
{
  float r = 0 , g = 0 ,b = 0;
  int offset = matrixsize/2;
  for(int i = 0;i < matrixsize ; i++){
    for(int j = 0 ; j < matrixsize ; j++){
      int xloc = x + i-offset;
      int yloc = y + j-offset;
      int loc = xloc+img.width*yloc;
      loc = constrain(loc,0,img.pixels.length-1);
      
      r += red(img.pixels[loc])*matrix[i][j];
      g += green(img.pixels[loc])*matrix[i][j];
      b += blue(img.pixels[loc])*matrix[i][j];
    }
  }
  
  r = constrain(r , 0 ,255);
  g = constrain(g , 0 ,255);
  b = constrain(b , 0 ,255);
  return color(r,g,b);
}