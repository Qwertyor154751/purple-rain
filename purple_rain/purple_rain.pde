// purple rain

Drop[] drop = new Drop[2000];

void setup()
{
  size(1200,600);
  for( int i = 0; i < drop.length ; i++)
      {
          drop[i] = new Drop();
      }
}      
void draw ()
{
  background(230,230,250);
  for( int i = 0; i < drop.length ; i++)
      {
          drop[i].fall();
          drop[i].show();
      }
}
