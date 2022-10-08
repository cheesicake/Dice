void setup()
{
  size(600, 600);
  textAlign(CENTER);
  noLoop();
  background(200, 100, 200, 100);
}
Die dance;
int sum;
void draw()
{
  
  for(int y = 100; y <= 300; y+= 100)
  {
  for(int x = 120; x <= 360; x+=120)
  {
   dance = new Die(x, y);
   dance.show();
   sum+=dance.number;
   
   } 
  }
   text("Sum =", 350, 75);
   text(sum, 450, 75);
   System.out.println(sum);
   sum = 0;
}
void mousePressed()
{ 
  redraw();
  
}
class Die
{
  //three member variables
  int number; 
  int myX, myY;


  //three member functions
  Die(int x,int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    number = ((int)(Math.random()*6)+1);
  }
  void show()
  {
          fill(252);
          rect(myX, myY, 50, 50);
          fill(0);
          textSize(30);
          if(number == 1){
           text("1", myX+10, myY+30);
          }
          if(number == 2){
           text("2", myX+10, myY+30);
          }
          if(number == 3){
           text("3", myX+10, myY+30);
          }
          if(number == 4){
           text("4", myX+10, myY+30);
          }
          if(number == 5){
           text("5", myX+10, myY+30);
          }
          if(number == 6){
           text("6",myX+10, myY+30);
          }
    
  }
}
