int r =0;
  int g = 0;
  int b = 0;
public void setup()
{

size(500,500);

}
public void draw()
{
  background(0);
  fill(r,g,b);
sierpinski(0,500,500);
noStroke();

}
public void mouseDragged()//optional
{
r = (int)(Math.random()*255);
g = (int)(Math.random()*255);
b = (int)(Math.random()*255);
redraw();
}
public void sierpinski(int x, int y, int len) 
{
if( len <=20)
triangle(x,y,x+len,y,(x+len/2),y-len);
else{
  sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski((x+len/4),(y - len/2),len/2);
}
}




