 float x[]=new float [51];
 float y[]=new float [51];
 
void setup(){
  size(800,800);
   background(255);
  stroke(20);
  smooth();
//  float x1, y1, x0, y0;
 
  
  x[0]=random (300,500);
  y[0]=random (300,500);
  for(int s=1; s<51; s++){
    x[s]=random(0,800);
    if (s % 2 == 0){
      y[s]=sqrt(40000-pow(x[s]-x[0],2))+y[0];
    }else {
      y[s]=-sqrt(40000-pow(x[s]-x[0],2))+y[0];
    }
    for(int a=1; a<s; a++){
      line(x[s],y[s],x[a],y[a]);
    }
  }
}
    
  
