  class Kvadrat 
{
  float x, y, s;
  Kvadrat(float _x, float _y, float _s)
   {
    this.x = _x;
    this.y = _y;
    this.s = _s;
   }
  

 void right(float _s) 
  {
   this.x+=_s;
  }

}

class Ellipse extends Kvadrat 
{
  color cvet; //цвет
  Ellipse(float _x, float _y, float _s, color _cvet) 
  {
   super(_x, _y, _s);
   this.cvet = _cvet;
  }

  void draw() 
  {
   ellipse(this.x,this.y,this.s,this.s);
   fill(this.cvet);
   stroke(#FF4500);
  }
}

Ellipse[] nasled;

void setup()
{
   size(800,600);
   
   nasled = new Ellipse[30];
   for(int i=0; i<30; i++)
  {
   nasled[i] = new Ellipse(random(width), random(height), 80, int(random(#000000, #FFD700)));
  }
}

void draw()
 {
  background(200,160,250);
  for(int i=0; i<30; i++)
   {
    nasled[i].draw();
    nasled[i].right(random(8));
   }
 }
 