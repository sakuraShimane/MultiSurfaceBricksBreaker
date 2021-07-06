/*******************************
 Ball
 *******************************/

float ballX = 200.0f;
float ballY = 300.0f;
float ballVX = 5.0f;
float ballVY = 5.0f;
float ballRadius = 20.0f;

int missCounter = 0;

void moveBall(){
  ballX = ballX + ballVX;
  ballY = ballY + ballVY;
  if( ballX > width || ballX < 0 ){
    ballVX = -ballVX;
  }
  
  //if  ( ballY > height || ballY < 0 ){    
  if( ballY < 0 ){
    ballVY = - ballVY;
  }

  /* 負け判定 */
  // 下についたとき
  if( ballY > height ){
    // 追記
    soundfile.play(); //かべにあたっときに音をならす
    ballVY = -ballVY;
    drawPreBlocks();//追加のブロックを描く関数
    
    //rect( blockX[i], blockY[i], blockWidth[i], blockHeight[i] );
    /*missCounter++;
    println("Miss!!");
    */
    /* ボール位置のリセット */
    //ballX = 100;  
    //ballY = 300;

    /* 何度かミスするとゲームオーバー */
    if( missCounter >= 5 ){
      println( "Game Over!!" );
      missCounter = 0;// ゲームをリセット
    }
  }
}

void drawBall(){
  ellipse( ballX, ballY, ballRadius * 2, ballRadius * 2 );
}
