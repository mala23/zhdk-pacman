PVector     startPos = new PVector();
PVector     endPos = new PVector();
int         curTime = 0;
int         animSpeed = 5;
int         animDuration = 2000;
boolean     drawFlag=false;
 
void setup()
{
  size(640, 480);
  smooth();
}
 
void draw()
{
  background(51);
 
  // calc. the anim time
  curTime += animSpeed;
  if(curTime >= animDuration) {
     curTime = 0;
 }
  // calc. the proportion of completion in the animation
  float normTime = curTime * 1.0 / animDuration;
 
  if(drawFlag)
  {
    // calculate the position of the circle on the line
    PVector dir = PVector.sub(endPos,startPos);
 
    PVector pos = PVector.add( startPos , PVector.mult(dir,normTime));
    ellipse(pos.x,pos.y, 20,20);
  }
 
}
 
void mousePressed()
{
  drawFlag = true;
  curTime = 0;
  startPos.set(mouseX,mouseY,0);
  endPos = startPos.get();
}
 
void mouseDragged()
{
  endPos.set(mouseX,mouseY,0);
}
 
void mouseReleased()
{
  drawFlag = false;
  println("released");
}
