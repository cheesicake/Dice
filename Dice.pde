void setup()
  {
      size(700, 700);
      noLoop();
  }
  Die dance;
  void draw()
  {
      //dance = new Die();
      //dance.show();
       fill(0);
          rect(100, 100, 75, 75);
          System.out.println((int)(Math.random()*6+1));
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int number;
      
      Die(int x, int y) //constructor
      {
        
      }
      void roll()
      {
          if((int)(Math.random()*6+1)==1){
            number = 1;
          }
      }
      void show()
      {
          fill(0);
          rect(350, 350, 75, 75);
          
      }
  }
