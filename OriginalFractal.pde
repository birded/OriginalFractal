int op = 90;
int siz = 300;
boolean dec, inc = false;
boolean pos = true;

public void setup()
{
  size(800,800);
  rectMode(CENTER);
  noFill();
}


public void draw()
{
  background(10);
  fractal(400,400,siz,op);
  if(op<100)
    pos = true;

  if(op > 220)
    pos=false;

  if(pos)
    op++;

  if(!pos)
    op--;


  if(dec)
    siz-=5;
  if(inc)
    siz+=5;

  if(siz >= 800)
    siz=800;


}

public void keyPressed()
{
  if(keyCode == LEFT)
    dec = true;
  if(keyCode == RIGHT)
    inc = true;
  if(key == 'r')
    siz = 330;
}

public void keyReleased()
{
  if(keyCode == LEFT)
    dec = false;
  if(keyCode == RIGHT)
    inc = false;
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
