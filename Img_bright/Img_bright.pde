PImage img;
PImage dest;

void setup()
{
  size(400,400);
  img = loadImage("dog.jpg");
  dest = createImage(img.width,img.height,RGB);
}

void draw()
{
  img.loadPixels();
  dest.loadPixels();
  for(int x = 1 ; x <width;x++)
  {
    for(int y = 0 ;y<height ; y++)
    {
      int loc = x+y*width;
      color pix = img.pixels[loc];
      
      int leftloc = (x-1) + y*img.width;
      color leftPix = img.pixels[leftloc];
      
      float diff = abs(brightness(pix) - brightness(leftPix));
      dest.pixels[loc] = color(diff);
    }
  }
  dest.updatePixels();
  image(dest,0,0);
}