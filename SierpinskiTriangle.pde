public void setup()
{
  size(400,400);
  background(0);
}
public void draw()
{
  sierpinski(0,400,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{ 
  int what = 20;
  if(len <=what)
  {
    noStroke();
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
