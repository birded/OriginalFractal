int op = 90;
boolean inc = false;

public void setup()
{
  size(800,800);
  rectMode(CENTER);
  noFill();
}

public void draw()
{
  background(10);
  fractal(400,400,330,op);
  if(op<140)
    op++;
}


public void fractal(int x, int y, int l, int opac){
  stroke( y/2 , x/2, x*y,opac);
  rect(x,y,l,l);
  if(l > 10){
    fractal(x+l/2, y-l/2, l/2, opac);
    fractal(x-l/2, y-l/2, l/2, opac);
    fractal(x+l/2, y+l/2, l/2, opac);
    fractal(x-l/2, y+l/2, l/2, opac);
  }
}
