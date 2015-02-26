void setup(){
  size(800,400);
   background(255);
  stroke(20);
  smooth();
  
  float x0, y0, x1, y1, r;
   x0=random(600,800);
   y0=-2*x0+1600;
   x1=random(0,800);
   y1=0.5*x1-2.5*x0+1600;
   for(float m=y1;m<0 || m>400;m=y1){
     x1=random(0,800);
     y1=0.5*x1-2.5*x0+1600;
   }
   
   if (y0>200){
     r=random(abs(2*x1+y1-1600)/pow(5,0.5),sqrt(pow(x1-600,2)+pow(0.5*x1-2.5*x0+1200,2)));
   }else{
     r=random(abs(2*x1+y1-1600)/pow(5,0.5),sqrt(pow(x1-800,2)+pow(0.5*x1-2.5*x0+1600,2)));
   }
   arc(x1,y1,2*r,2*r,0,TWO_PI);
   line(800,0,600,400);
   point(x0, y0);
   point(x1, y1);
   fill(0);
   arc(x0,y0,3,3,0,TWO_PI);
   arc(x1,y1,3,3,0,TWO_PI);
}
   
    
                              
