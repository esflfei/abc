int[] x={6,58,46,15,86,20,3,13,56,19,75,18,64,24,48,14};
int time;
int temp;
int i=1;
int p=0;
void setup(){
  size(800,1000);
  background(255,255,255);
  paint();
  }
void draw(){
if (i<16)
{
  if (p<15){
  {
    if(x[p]>x[p+1])
    {
    temp=x[p];
    x[p]=x[p+1];
    x[p+1]=temp;
    paint();
    }
  }
  p++;
}
else{
  p=0;
  i++;
}
}

}
void paint(){
  fill(255,255,255);
  rect(0,0,800,1000);
  fill(255,0,0);
  for(int p=0;p<16;p++){
      rect(50*p,0,50,10*x[p]);    
  }
  delay(150);
}
