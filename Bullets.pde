class Bullets extends Floater {
  
  public Bullets(Spaceship ship) { //constructor
    myCenterX = ship.getMyCenterX();
    myCenterY = ship.getMyCenterY();
    //System.out.println(myCenterX);
    //System.out.println(myCenterY);
    myPointDirection  = ship.getMyPointDirection();
    accelerate(6);
    myColor = color(255,255,255);
    
    
   
  }
  public void travel() {
    move();
    show();
    //System.out.println(myCenterX);
    //System.out.println(myCenterY);
    //System.out.println("shot");
    
  }
  
  public void show ()  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    //translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    //float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    //rotate(dRadians);
    
    //draw the polygon
    ellipse((float)myCenterX,(float)myCenterY, 10, 10);

    //"unrotate" and "untranslate" in reverse order
    //rotate(-1*dRadians);
    //translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
