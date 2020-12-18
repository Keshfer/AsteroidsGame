Spaceship tee = new Spaceship();
ArrayList<Asteroids> dopple = new ArrayList<Asteroids>();
ArrayList<Bullets> pew = new ArrayList<Bullets>();
Star[] cheez = new Star[200];
private int opacity;
private double distance;
private boolean doBreak = false;
private boolean gameOver = false;


boolean drawShip = true;
boolean disappear = false;
String ack = "000000";

//your variable declarations here
public void setup() 
{
  opacity = 255;
  size(800, 800);
  rectMode(CENTER);
  for (int t = 0; t < 5; t++) {
    dopple.add(new Asteroids());
  }
  // -9240838 color of ship
  // 16710770 color of stars
  // 0 is black

  //tee.test();
  //System.out.println(unhex(ack));
  for (int i = 0; i < 200; i++) {
    cheez[i] = new Star();
  }
  //your code here
}
public void draw() 
{
  //shows stars
  fill(0, 0, 0, opacity);
  rect(400, 400, 9999, 9999);
  for (int i = 0; i < 200; i++) {
    cheez[i].show();
  }
  //end of shows stars
  //shows asteriods
  for (int t = 0; t < dopple.size(); t++) {
    dopple.get(t).chee();
  }
  //end of show asteroids
  //shows bullets
  for (int b = 0; b < pew.size(); b++) {
    pew.get(b).travel();
  }
  // end of show bullets
  //Detection
  if(dopple.size() != 0) {
  //checking collision between asteroids and bullets
  doBreak = false;
  for (int g = 0; g < dopple.size(); g++) {
    for (int q = 0; q < pew.size(); q++) {
      distance = Math.sqrt(Math.pow((pew.get(q).myCenterY - dopple.get(g).myCenterY), 2) + Math.pow(pew.get(q).myCenterX - dopple.get(g).myCenterX, 2));
      if (distance <= 75) {
        pew.remove(q);
        dopple.remove(g);
        //System.out.println("removed");
        doBreak = true;
        break;
      }
    }
    if (doBreak) {
      break;
    }
  }
  //end of collision check between asteroids and bullets
  //checking collision between asteroids and ship
    for (int y = 0; y < dopple.size(); y++) {
      distance = Math.sqrt(Math.pow(tee.myCenterY - dopple.get(y).myCenterY, 2) + Math.pow(tee.myCenterX - dopple.get(y).myCenterX, 2));
      if (distance <=75) {
        dopple.remove(y);
        gameOver = true;
      }
    }
  //End of detection
  }
  if (gameOver == false) {
    tee.move();
    if (drawShip) { 
      opacity = 255;
      tee.show();
    } else {
      tee.hyperSpace();
      tee.show();
    }
  } else {
    tee.accelerate(0);
  }
  System.out.println(tee.myCenterX);
  System.out.println(tee.myCenterY);
}




//your code here

public void keyPressed() {
  if (keyCode == 87) {
    //System.out.println();
    tee.accelerate(0.1);
  }
  if (keyCode == 83) {
    tee.accelerate(-0.1);
  }
  if (keyCode == 65) {
    tee.turn(-5);
  }
  if (keyCode == 68) {
    tee.turn(5);
  }
  if (keyCode == 69) {
    drawShip = false;
    opacity = 1;
    for (int i = 0; i < 200; i++) {
      cheez[i].show();
    }

    tee.setMyCenterX((double)(Math.random() * 750) + 50);
    tee.setMyCenterY((double)(Math.random() * 750) + 50);
    tee.setMyXSpeed(0);
    tee.setMyYSpeed(0);
  }
  if (keyCode == 32) {
    if (gameOver == false) {
      pew.add(new Bullets(tee));
    }
  }
}
