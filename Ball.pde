

public class Ball extends Rectangle{

  private float dx = 3, dy = 3;
  
  public Ball(float x, float y, float rwidth, float rheight, int r, int g, int b){
      super(x, y, rwidth, rheight, r, g, b);
  }
  
  public int update(Player player, Rectangle[][] pointBlocks){
  
    float prevdx = dx, prevdy = dy;
    
    int dscore = 0;
    
    setX(getX()+dx);
    setY(getY()+dy);
    
    if(this.isCollidingWithBounds()){
      
      
      float[] cheating = {-1,1};
      
      if(this.getX() < 0 || this.getX() + this.getWidth() > width){
        dx*=-1;
        dy*=cheating[int(random(2))];
      }

      
      if(this.getY() < 0 || this.getY() + this.getHeight() > height){ 
        dx*=cheating[int(random(2))];
        dy*=-1;
      }      
      setX(getX()-prevdx);
      setY(getY()-prevdy);
      
    }
    
    if(this.isCollidingWithRect(player, this)){
    
      dy*=-1;
        
      setX(getX()-prevdx);
      setY(getY()-prevdy);
      
    }
    
    for(Rectangle[] arr: pointBlocks){
    
      for(Rectangle rect: arr){
      
        if(this.isCollidingWithRect(rect, this)){
        
            dscore++;
            
            rect.setWidth(0);
            rect.setHeight(0);
            rect.setX(0);
            rect.setY(0);
            
            setY(getY()-prevdy);
            dy*=-1;
        
        }
        
      }
      
    }
    
    return dscore;
    
  }
  
}