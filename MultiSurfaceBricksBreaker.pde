/***************************************************
 K214　知識メディア方法論
 MultiSurfaceBricksBreaker
 https://github.com/sakuraShimane/MultiSurfaceBricksBreaker.git
 2021年6月29日: ブロック崩しゲームが最低限実装されたVer.（）
 ***************************************************/

void setup() {
  size(1280, 1024);
  arrangeBlocks();
}
void draw() {

  background(255, 255, 255); 

  /* BallとBarの衝突判定 */
  if (ballX > barX && ballX < barX + barWidth) {
    if (ballY > barY && ballY < barY + barHeight) {
      ballVY = -ballVY;
    }
  }

  /* Step2-2. Ballと複数Blockの衝突判定 */
  for ( int i = 0; i < MAX_BLOCKS; i++ ) {
    if  ( blockHitFlag[i] == false ) {
      if ( ballX > blockX[i] && ballX < blockX[i] + blockWidth[i] ) {
        if ( ballY > blockY[i] && ballY < blockY[i] + blockHeight[i] ) {
          ballVY = -ballVY;     
          blockHitFlag[i] = true;
        }
      }
    }
  }

  /* Ball */
  moveBall();
  drawBall();

  /* Bar */
  moveBar();
  drawBar();

  /* Block */
  moveBlocks();
  drawBlocks();
}
