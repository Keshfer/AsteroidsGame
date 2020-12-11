class Asteroids extends Floater {
  private int identifier;
  private int placeAsteroid;
  private int rotation = 0; 
  
  public Asteroids() {//constructor
     placeAsteroid = (int)random(4);
     myColor = color(176, 176, 176);
     myPointDirection = 0;
     
    if(placeAsteroid == 0) { //spawns in the right and decides up and down
      myCenterX =(int)(random(20) + 850);
      myCenterY =(int)(random(801));
      identifier = 0;
    }
    if(placeAsteroid == 1) { //spawns in the left and decides up and down
      myCenterX =(int)(random(20) - 50);
      myCenterY =(int)(random(801));
      identifier = 1;
    }
    if(placeAsteroid == 2) { //Spawns in bottom and decides left and right
      myCenterY = (int)(random(20) + 850);
      myCenterX = (int)(random(801));
      identifier = 2;
    }
    if(placeAsteroid == 3) { //Spawns in top and decides left and right
      myCenterY =(int)(random(20) - 50);
      myCenterX =(int)(random(801));
      identifier = 3;
    }
    if(identifier == 0) {
      myPointDirection = (int)random(179) + 91;
    }
    if(identifier == 1) {
      myPointDirection = random(-179) + 89;
    }
    if(identifier == 2) {
      myPointDirection = (int)random(-179) + 1;
    }
    if(identifier == 3) {
     myPointDirection = (int)random(-179) + 1; 
    }
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)random(80) + 2;
    yCorners[0] = (int)random(-80) - 2;
    xCorners[1] = (int)random(80) + 2;
    yCorners[1] = (int)random(80) +2;
    xCorners[2] = (int)random(-80) - 2;
    yCorners[2] = (int)random(80) + 2;
    xCorners[3] = (int)random(-80) - 2;
    yCorners[3] = (int)random(-80) - 2;
    accelerate(random(1) + 1);
    // for which direction an asteroid would go, have it pick a random angle towards the canvas
    
    
  }
  public void chee() {
    turn(0.5);
    move();
    show();
  }
 
  
  public void spin() {
    if(rotation >= 360) {
      rotation = 0;
    }
    rotation = rotation + 1;
    translate((float)myCenterX, (float)myCenterY);
    rotate(radians(rotation));
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
