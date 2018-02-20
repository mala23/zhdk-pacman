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
    noStroke();
    ellipse(pos.x,pos.y, 80, 80);
 
    if(pos.x < 165) {
      ellipse(165, 100, 20, 20);
    }
    if(pos.x < 220) {
      ellipse(220, 100, 20, 20);
    }
    if(pos.x < 275) {
      ellipse(275, 100, 20, 20);
    }
    if(pos.x < 330) {
      ellipse(330, 100, 20, 20);
    }
    if(pos.x < 385) {
      ellipse(385, 100, 20, 20);
    }
    if(pos.x < 435) {
      ellipse(435, 100, 20, 20);
    }
    if(pos.x < 490) {
      ellipse(490, 100, 20, 20);
    }
  }
}
 
void mouseClicked()
{
  if (mouseButton == LEFT) {
    drawFlag = true;
    curTime = 0;
    startPos.set(100,100,0);
    endPos.set(540,100,0);
  }
  if (mouseButton == RIGHT) {
    drawFlag = false;
    println("released");
  }
}
