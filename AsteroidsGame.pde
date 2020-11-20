Spaceship tee = new Spaceship();
Star[] cheez = new Star[200];
int opacity;
int count;
boolean drawShip = true;
String ack = "000000";

//your variable declarations here
public void setup() 
{
  opacity = 255;
  size(800,800);
  rectMode(CENTER);
  // -9240838 color of ship
  // 16710770 color of stars
  // 0 is black

  //tee.test();
  //System.out.println(unhex(ack));
  for(int i = 0; i < 200; i++) {
   cheez[i] = new Star(); 
  }
  //your code here
}
public void draw() 
{
  fill(0,0,0, opacity);
  rect(400,400, 9999,9999);
  for(int i = 0; i < 200; i++) {
   cheez[i].show(); 
  }
  tee.move();
  if(drawShip){
    opacity = 255;
    count = 0;
    tee.show();
  } else {
    if(!(get((int)tee.getMyCenterX(),(int)tee.getMyCenterY()) == 0 ||get((int)tee.getMyCenterX(),(int)tee.getMyCenterY())== 16710770)) {
          //System.out.println("ah");
          if(count == 100) {
            drawShip = true;
          }
        }
        count++;
  }
  //your code here
}
public void keyPressed() {
    if (keyCode == 87) {
      //System.out.println();
      tee.accelerate(0.1);
    }
    if(keyCode == 83) {
      tee.accelerate(-0.1);
    }
    if(keyCode == 65) {
     tee.turn(-5); 
    }
    if(keyCode == 68) {
     tee.turn(5); 
    }
    if(keyCode == 69) {
        opacity = 6;
        drawShip = false;
        for(int i = 0; i < 200; i++) {
           cheez[i].show(); 
        }
        
      
      tee.setMyCenterX((double)(Math.random() * 750) + 50);
      tee.setMyCenterY((double)(Math.random() * 750) + 50);
      tee.setMyXSpeed(0);
      tee.setMyYSpeed(0);
    }
  }

  
  
