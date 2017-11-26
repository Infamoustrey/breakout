

public class Player extends Rectangle{

  private float dx = 3;
  
  public Player(float x, float y, float rwidth, float rheight, int r, int g, int b){
      super(x, y, rwidth, rheight, r, g, b);
  }
  
  public void update(){
  
    pollInput();
    
    setX(getX()+dx);
    
    if(this.isCollidingWithBounds()){
      
      setX(getX()-dx);
      
    }
    
  }
  
  
  public void pollInput(){

    if (keyPressed) {
      
      if (key == 'a' || key == 'A') {
          dx = abs(dx) * -1;
      } else if (key == 'd' || key == 'D') {
          dx = abs(dx);
      }
    
    }
    
  }
  
  
}