
int x,y;
int step = 5;
int deltaX = 1,deltaY = -1;
int numPoints;
int stepCounter = 1;
float circleSize = 2;

boolean checkPrime(int num){
  if(num == 1)return false;
  for(int i=2;i<=sqrt(num);i++)
    if(num%i==0)
      return false;
  return true;
}

void setup() {
  size(1920,1080);
  background(0);
  x = width/2;
  y = height/2;
  numPoints = width*height;
  fill(255);
  stroke(255);
  for(int i=1;i<numPoints;){
    for(int j=0;j<stepCounter;j++){
      if(checkPrime(i))
        circle(x,y,circleSize);
      i++;
      int prevx = x;
      int prevy = y;
      x += (deltaX*step);
      //if(i < numPoints)
      //  line(prevx,prevy,x,y);
    }
    for(int j=0;j<stepCounter;j++){
      if(checkPrime(i))
        circle(x,y,circleSize);
      i++;
      int prevx = x;
      int prevy = y;
      y += (deltaY*step);
      //if(i < numPoints)
      //  line(prevx,prevy,x,y);
    }
    stepCounter++;
    deltaX *= -1;
    deltaY *= -1;
  }
  save("spiral.png");
}
