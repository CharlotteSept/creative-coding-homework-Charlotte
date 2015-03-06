void setup(){
 size(600, 600);
 background(255);  
 smooth();
 frameRate(60);
}


void draw(){
 float x1,y1,x2,y2,x3,y3,angleSecond, angleMinute, angleHour;
 background(255);
 translate(300, 300);
 stroke(64, 64, 64);
 strokeWeight(8);
//draw the three circles
 ellipse(0, 0, 500, 500);
 ellipse(0, 0, 400, 400);
 ellipse(0, 0, 150, 150);
 
 //timescale for second
 for(int i=0; i<12; i++){
  stroke(230, 230, 250);
  strokeWeight(8);
  line(225*sin(TWO_PI/12*i), 225*cos(TWO_PI/12*i), 235*sin(TWO_PI/12*i), 235*cos(TWO_PI/12*i));
 }
 //timescale for minute
 for(int j=0; j<12; j++){
   stroke(255, 215, 0);
   strokeWeight(6);
   line(180*sin(TWO_PI/12*j), 180*cos(TWO_PI/12*j), 170*sin(TWO_PI/12*j), 170*cos(TWO_PI/12*j));
 }
 //timescale for hour
 for(int h=0; h<12; h++){
   stroke(255, 102, 102);
   strokeWeight(6);
   line(58*sin(TWO_PI/12*h), 58*cos(TWO_PI/12*h), 62*sin(TWO_PI/12*h), 62*cos(TWO_PI/12*h));
 }
 
 //read hour
  angleHour=hour()/12.0*TWO_PI;
  x1 = cos(angleHour)*60;
  y1 = sin(angleHour)*60;
 strokeWeight(15);
 stroke(60, 179, 113);
 point(x1, y1);
 
 //read minute
  angleMinute = minute()/60.0*TWO_PI;
  x2 = cos(angleMinute)*175;
  y2 = sin(angleMinute)*175;
 strokeWeight(15);
 stroke(189, 183, 107);
 point(x2, y2);
 
 //read second
  angleSecond = second()/60.0*TWO_PI;
  x3 = cos(angleSecond)*230;
  y3 = sin(angleSecond)*230;
 strokeWeight(15);
 stroke(255, 69, 0);
 point(x3, y3);
}

