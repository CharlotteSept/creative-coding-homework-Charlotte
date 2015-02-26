int cell[][] = new int [28][8];
void setup(){
  size(1260, 350);
  background(255);
  stroke(224, 224, 224);
  smooth();
  fill(255);
  for(int a=0; a<420; a++){
    for(int b=0; b<100; b++){
      rect(3*a, 3*b, 3, 3);
    }
  }
  frameRate(2); 
  
  String total = "207 623 0 146 344 0 761 2081 231 913 0 392 759 0 1145 3440 224 1542 0 420 780 0 1256 4222 327 1633 0 368 436 0 1565 4329 244 988 0 282 330 0 1206 3050 202 690 0 240 423 0 1606 3161 170 1075 0 248 227 0 1084 2804 341 1183 0 0 602 0 1741 3867 290 1073 0 362 737 0 1802 4264 293 1193 0 361 709 0 2196 4752 241 1305 0 439 672 0 1881 4538 386 1715 0 664 964 0 1736 5465 387 1613 0 791 1314 0 1579 5684 318 1698 0 1022 786 0 1679 5503 335 1115 0 966 692 0 1392 4500 366 1109 0 1004 820 0 2039 5338 389 762 0 733 546 0 1880 4310 253 867 147 792 667 2113 0 4839 104 981 546 1117 517 2366 0 5631 354 1049 661 1387 1331 2885 0 7667 303 1422 856 974 1099 2686 0 7340 290 1349 829 1609 976 2037 0 7090 105 1284 1578 2566 1158 1958 0 8649 252 1626 1313 2257 1292 2586 0 9326 235 1688 2210 2903 1891 3400 0 12327 256 2294 2606 3823 2225 4289 0 15493 378 2153 2984 4296 2626 5055 0 17492 368 2322 3617 4515 2904 5120 0 18846";
  int temp[] = int(split(total, " "));
  for(int i =  0; i < 28; i++){
    for (int j = 0; j < 8; j++){
      cell[i][j] = temp[i*8+j];
    }
  }
}

int i=0; 
int[] xPosition = new int[6000];
int[] yPosition = new int[6000];


void draw(){
  background(255);
  for(int j=0;j<7; j++){
    for(int c=0; c<cell[i][j];c++){
      xPosition [c] = int(random(60*j, 60*j+59));
      yPosition [c] = int(random(0,99));
      for(int d=0; d<c; d++){
        if(xPosition [c] == xPosition[d] && yPosition [c] == yPosition[d]){
          xPosition[c] = int(random(60*j, 60*j+59));
          yPosition[c] = int(random(0,99));
          d=-1;
        }else{
        }
      }
      if(j==0){
        fill(204,0,0);
      } else if(j==1){
        fill(255,128,0);
      } else if(j==2){
        fill(255,255,0);
      } else if(j==3){
        fill(0,255,0);
      } else if(j==4){
        fill(0,153,76);
      } else if(j==5){
        fill(0,128,255);
      } else if(j==6){
        fill(178,102,255);
      }
      
        rect(3*xPosition[c], 3*yPosition[c], 3, 3);
    }

  }
  
  textAlign(CENTER);
  fill(0);
  text("Staten Island Ferry", 90, 320);
  text("Brooklyn Bridge", 270, 320);
  text("Manhattan Bridge", 450, 320);
  text("Williamsburg Bridge", 630, 320);
  text("Queensboro Bridge", 810, 320);
  text("Hudson River Greenway", 990, 320);
  text("9th to 12th Avenues", 1170, 320);
  if (i==0){
    text("1980",630,340);
  }else{
    text(str(1984+i),630,340);
  }
  if (i<27){
    i=i+1;
  }else{
  i=0;
  }
  
}
  
          
           
        
