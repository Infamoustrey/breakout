
public class Rectangle{

  
    private float x,y,rwidth,rheight;
    private int r,g,b;
  
    public Rectangle(float x, float y, float rwidth, float rheight, int r, int g, int b){
    
       this.x = x;
       this.y = y;
       this.rwidth = rwidth;
       this.rheight = rheight;
    
       this.r = r;
       this.g = g;
       this.b = b;
    
    }
    
    public void render(){
     
      fill(r,g,b);
      rect(x,y,rwidth,rheight);
      
    }
    
    public boolean isCollidingWithBounds(){
    
      if(this.x < 0){return true;}
      if(this.x + this.rwidth > width){return true;}
      if(this.y < 0){return true;}
      if(this.y + this.rheight > height){return true;}
      
      return false;
    }
    
    public boolean isCollidingWithRect(Rectangle r1, Rectangle r2){

     if(
     r1.getX() + r1.getWidth() >= r2.getX() &&
     r1.getX() <= r2.getX() + r2.getWidth() &&
     r1.getY() + r1.getHeight() >= r2.getY() &&
     r1.getY() <= r2.getY() + r2.getHeight()
     ){
       return true;
     }
    
     return false;
     
   }
    
    public float getX(){return x;}
    public float getY(){return y;}
    public float getWidth(){return rwidth;}
    public float getHeight(){return rheight;}
    
    public void setX(float val){this.x = val;}
    public void setY(float val){this.y = val;}
    public void setWidth(float val){this.rwidth = val;}
    public void setHeight(float val){this.rheight = val;}
  
}