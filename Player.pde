
// Here we are going to define our player class which will ultimately be an rectangle so we'll leverage the pre-existing variables and methods of that class

public class Player extends Rectangle{

  // DX, short for delta x will represent the rate of movement across the x axis of our player
  private float dx = 3;
  
  public Player(float x, float y, float rwidth, float rheight, int r, int g, int b){
      super(x, y, rwidth, rheight, r, g, b); // fufill the requirements of our inherited class
  }
  
  public void update(){
  
    pollInput(); // listen for input and react accordingly
    
    setX(getX()+dx); // update our x coordinate
    
    // If we are colliding we are going to 'push' our x coordinate back, a better way to do this would be to check is we would collide
    // 2 lines up and then make a decision whether or not to move then. We can get away with this because our program is so simple it 
    // resets faster than a human eye could notice
    
    if(this.isCollidingWithBounds()){
      
      setX(getX()-dx);
      
    }
    
  }
  
  
  public void pollInput(){

    if (keyPressed) {
      
      if (key == 'a' || key == 'A') {
          dx = abs(dx) * -1; // set the direction of our x movement negative
      } else if (key == 'd' || key == 'D') {
          dx = abs(dx); // set the direction of our x movement positive
      }
    
    }
    
  }
  
  
}
