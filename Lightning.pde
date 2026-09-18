int startx = 0;

int endx = 0;

int starty = 150;

int endy = 150;

int money = 400;



void setup()

{

  size(300,300);

  strokeWeight(2);

  background(0,0,0);
  
  int x = 0;
  int y = 150;
  while(x<=300){
    stroke (241,245,67);
    line(x,y,x+5,y);
    x += 10;
  }

}

void draw()


{

//stroke((int) (Math.random()*255),(int) (Math.random()*255),(int) (Math.random()*255));

while(endx<300){

  endx = startx + ((int) (Math.random()*10));

  endy = starty + ((int) (Math.random()*19)-9);

  if (endy <= 150)

    stroke(0,255,0);

  else if (endy>150)

    stroke(255,0,0);

  

  line(startx,starty, endx, endy);

  startx = endx;

  starty = endy;

  if (endx>300){

 int change = 150-endy;

 money = money+change;

change = 0;



  }

  

  

}

fill(255,255,255);
textSize(20);
text("$  ",3,20);
text(money,13,20);
int change1 = 150-endy;
text(change1,150,230);
}

void mousePressed()

{

  background(0,0,0);

  
 int x = 0;
  int y = 150;
  while(x<=300){
    stroke (241,245,67);
    line(x,y,x+5,y);
    x += 10;
  }
 startx = 0;

 endx = 0;

 starty = 150;

 endy = 150;

}


