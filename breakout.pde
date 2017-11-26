
Ball ball;
Player player;
Rectangle[][] pointBlocks;
int row = 3, col = 12, score = 0;

void setup(){
 
  size(800,600);
  background(0);
  
  
  init();
}

void draw(){
  
  background(0);
  
  update();
  render();
  
}

public void init(){

  
  readyLevel();
  
  ball = new Ball(width/2-10,height/2-10,20,20, 255, 0, 0);
  player = new Player(width/2-50,550,50,10, 255, 255, 255);

}

public void update(){
  
  score+=ball.update(player, pointBlocks);
  player.update();
  
}

public void render(){
  
  textSize(32);
  text("Score: "+score, 10, 30); 
  
  for(int y = 0; y < row; y++){
  
      for(int x = 0; x < col; x++){
  
          pointBlocks[y][x].render();
  
      }
  
  }
  
  ball.render();
  player.render();
}

public void readyLevel(){

  int xOffset = 40, yOffset = 50, bwidth = 60, bheight = 30;
  
  pointBlocks = new Rectangle[row][col];
  
  for(int y = 0; y < row; y++){
  
      for(int x = 0; x < col; x++){
  
          pointBlocks[y][x] = new Rectangle((float)(x*bwidth)+xOffset, (float)(y*bheight)+yOffset, (float)bwidth, (float)bheight, (int)random(150,255),  (int)random(150,255), (int)random(150,255));
  
      }
  
  }
  
}