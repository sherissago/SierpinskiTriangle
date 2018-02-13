public void setup()
{
  size(400,400);
  background(0);
  frameRate(10);
}
public void draw()
{
  background(0);
  sierpinski(0,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{ 
  int what = mouseY;
  if(what == 0)
  {
    what = 10;
  }
  if(len <=what)
  {
    noStroke();
    fill((float)(Math.random()*255), (float)(Math.random()*255),(float)(Math.random()*255));
    triangle(x,y,x+len/2,y-len,x+len,y);
    what++;
  }
  
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
  
  
}
