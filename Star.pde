class Star //note that this class does NOT extend Floater
{
  private int starX;
  private int starY;
  
  Star() { //constructor
    starX =((int)(Math.random() * 800));
    starY = ((int)(Math.random() * 800));
  }
  public void show() {
    fill( #fefc72 );
    noStroke();
    ellipse(starX, starY, 5, 5);
  }
  //your code here
}
