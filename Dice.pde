int Nr;
void setup(){
  noLoop();
  size(1050,1200);
  }
void draw(){
  Nr = 0;
  background(230);
  for(int y = 0; y < 1000; y += 210){
    for(int x = 0; x < 1050; x += 210){
      Die Kev = new Die(x,y);
      Kev.show();
    }
  }
  }
void mousePressed(){
  redraw();
  }
class Die{
      int numDie, myX, myY, r;
      
  Die(int x, int y){
          myX = x;
          myY = y;
          roll();
      }
  void roll(){
          r = (int)(Math.random()*6)+1;
      }
  void show(){
    fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    rect(myX,myY,200,200);
    fill(0,0,0);
    System.out.println(r);
    if(r == 1){
      ellipse(myX+100,myY+100,40,40);
      Nr = Nr + 1;
    }
    else if(r == 2){
      ellipse(myX+50,myY+50,40,40);
      ellipse(myX+150,myY+150,40,40);
      Nr = Nr + 2;
    }
    else if(r == 3){
      ellipse(myX+50,myY+50,40,40);
      ellipse(myX+100,myY+100,40,40);
      ellipse(myX+150,myY+150,40,40);
      Nr = Nr + 3;
    }
    else if(r == 4){
      ellipse(myX+50,myY+50,40,40);
      ellipse(myX+150,myY+50,40,40);
      ellipse(myX+50,myY+150,40,40);
      ellipse(myX+150,myY+150,40,40);
      Nr = Nr + 4;
    }
    else if(r == 5){
      ellipse(myX+50,myY+50,40,40);
      ellipse(myX+150,myY+50,40,40);
      ellipse(myX+50,myY+150,40,40);
      ellipse(myX+150,myY+150,40,40);
      ellipse(myX+100,myY+100,40,40);
      Nr = Nr + 5;
    }
    else if(r == 6){
      ellipse(myX+50,myY+50,40,40);
      ellipse(myX+50,myY+100,40,40);
      ellipse(myX+150,myY+50,40,40);
      ellipse(myX+150,myY+100,40,40);
      ellipse(myX+50,myY+150,40,40);
      ellipse(myX+150,myY+150,40,40);
      Nr = Nr + 6;
    }
  }
}
