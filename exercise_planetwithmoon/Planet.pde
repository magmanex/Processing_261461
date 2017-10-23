class Planet{
  float t,d,dist,speed;
  
  Planet(float dist , float d)
  {
    this.dist = dist;
    this. d = d;
    speed = random(0.01,0.03);
  }
  
  void update(){
    t+=speed;
  }
  
  void display()
  {
    pushMatrix();
    rotate(t);
    translate(dist,0);
    fill(0,255,0);
    ellipse(0,0,d,d);
    
    
    fill(0,110,125);
    rotate(t+10);
    translate(10,0);
    ellipse(0,0,d-0.5,d-0.5);
    popMatrix();
  }
}