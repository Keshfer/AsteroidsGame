class Spaceship extends Floater  
{   
  
  public Spaceship() {//constructor
    // color of ship
    myColor =  #72fefa ;
    //look direction
    setMyPointDirection(270);
    //speed
    setMyXSpeed(0);
    setMyYSpeed(0);
    //ship
    setCorners(4);
    xCorners = new int[getCorners()];
    yCorners = new int[getCorners()];
    setMyCenterY(400);
    setMyCenterX(400);
    //first corner
    setYCorners(0, -10);
    setXCorners(0, 0);
    //second corner
    setYCorners(1, 0);
    setXCorners(1, 30);
    //third corner
    setYCorners(2, 10);
    setXCorners(2, 0);
    //fourth corner
    setYCorners(3, 0);
    setXCorners(3, -10);
  }
  public void test() {
    System.out.println("corners: " + getCorners());
    System.out.println("myColor: " + myColor);
    for (int i = 0; i < corners; i ++) {
      System.out.println("xCorner: " + getXCorners(i));
      System.out.println("xCorner: " + getYCorners(i));
    }
    System.out.println("myCenterX: " + getMyCenterX());
    System.out.println("myCenterY: " + getMyCenterY());
    System.out.println("myXspeed: " + getMyXSpeed());
    System.out.println("myYspeed: " + getMyYSpeed());
    System.out.println("myPointDirection: " + getMyPointDirection());
  }

  // setters and mutators
  public void setMyXSpeed(double num) {
    myXspeed = num;
  }
  public double getMyXSpeed() {
    return myXspeed;
  }
  public void setMyYSpeed(double num) {
    myYspeed = num;
  }
  public double getMyYSpeed() {
    return myYspeed;
  }

  public void setMyPointDirection(double num) {
    myPointDirection = num;
  }
  public double getMyPointDirection() {
    return myPointDirection;
  }
  public void setMyCenterY(double num) {
    myCenterY = num;
  }
  public double getMyCenterY() {
    return myCenterY;
  }
  public void setMyCenterX(double num) {
    myCenterX = num;
  }
  public double getMyCenterX() {
    return myCenterX;
  }
  public void setCorners(double num) {
    corners = (int)num;
  }
  public int getCorners() {
    return corners;
  }
  public void setYCorners(int instance, int num) {
    yCorners[instance] = num;
  }
  public int getYCorners(int instance) {
    return yCorners[instance];
  }
  public void setXCorners(int instance, int num) {
    xCorners[instance] =(int)num;
  }
  public int getXCorners(int instance) {
    return xCorners[instance];
  }


  




  //your code here
}
