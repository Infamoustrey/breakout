
// Initialize our ball, player, block array, and score
Ball ball;
Player player;
Rectangle[][] pointBlocks;
int row = 3, col = 12, score = 0;

// Init Method
void setup(){
 
  size(800,600); // sets the dimensions of the window
  background(0); // set the background black
  
  
  init(); // call our own init method
}

void draw(){
  
  background(0); // flush the contents of our screen 
  
  update(); // call our update method
  render(); // render any objects to the screen
  
}

public void init(){

  
  readyLevel(); // create the blocks for our level
  
  // initialize the ball & player
  ball = new Ball(width/2-10,height/2-10,20,20, 255, 0, 0); 
  player = new Player(width/2-50,550,50,10, 255, 255, 255);

}

public void update(){
  
  // update the position of the ball and update the score
  score+=ball.update(player, pointBlocks);
  
  // update player paddle
  player.update();
  
}

public void render(){
  
  // Render the score to the screen
  textSize(32);
  text("Score: "+score, 10, 30); 
  
  // render the blocks to the screen
  for(int y = 0; y < row; y++){
  
      for(int x = 0; x < col; x++){
  
          pointBlocks[y][x].render();
  
      }
  
  }
  
  // render the ball & player to the screen
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
