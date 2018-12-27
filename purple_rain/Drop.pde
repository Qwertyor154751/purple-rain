class Drop
{
  float x = random(-400,1200);
  float y = random(-500,-50);
  float z = random (0, 20);
  float speed = map (z, 0, 20, 4, 10);
  float len = map (z, 0, 20, 10, 20);
  float dx = random(6,7);
  int c1 = int(random(255));
  int c2 = int(random(255));
  int c3 = int(random(255));
  void fall()
  {
    y = y + speed;
    float grav = map (z , 0, 20, 0, 0.2); 
    speed = speed + grav;
    if (y > height)
    {
      x = random(-400,1200); 
      y = random(-200,-100);
      speed = map (z, 0, 20, 4, 10);
    }
  }
   void show()
   {
     float thick = map (z, 0, 20, 1, 2);
     strokeWeight(thick);
     stroke(138,43,226);
     //stroke(c1,c2,c3);
     line(x,y,x+dx,y+len);
     x=x+dx;
   }

}
