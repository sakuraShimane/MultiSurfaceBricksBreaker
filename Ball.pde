/*******************************
 Ball
 *******************************/

float ballX = 200.0f;
float ballY = 300.0f;
float ballVX = 20.0f;//ぼーるのはやさ
float ballVY = 15.0f;//ぼーるのはやさ
float ballRadius = 15.0f;//ボールの半径

int missCounter = 0;

void moveBall(){
  
  //ボールのx軸を制御する
  ballX = ballX + ballVX;
  ballY = ballY + ballVY;
  
  if( ballX > width || ballX < 0 ){
    ballVX = -ballVX;
  }
  
  if( ballY < 0 ){
    ballVY = - ballVY;
  }
  
  /* 負け判定 */
  // 下についたとき
  //if( ballY >= height ){
    
  //ボールの下端っこで衝突との判定をするように
  //if( ballY + ballRadius >= height ){
  
  //  
  /*
  if(  preBlockNum > 0 ){ //追加ブロックがあるなら、それを基準にはねかえってほしい
   if( ballY + ballRadius >= preBlockY[ preBlockNum-1 ] ){
     attackWall.play(); //かべにあたっときに音をならす
     ballVY = -ballVY;
   }
  }
  */
 //
  if( ballY + ballRadius >= height ){ //まだ追加ブロックがないとき

    attackWall.play(); //かべにあたっときに音をならす
    
    if( under_ballHit < 10 ){
      under_ballHit++; //下面に当たったら行の数を一増やして
      arrangePreBlocks(); //追加のブロックの配置を追加する関数を呼び出す
    }
    
    ballVY = -ballVY;
  }
  
  /*
  if( ballY + ballRadius >= height ){
    
    println( "ballY + ballRadius"+ ( ballY + ballRadius ) );
    println( "preBlockNum"+ preBlockNum );
    
    if( preBlockNum !=0 )
    println( "preBlockY[ preBlockNum ]" + preBlockY[ preBlockNum-1 ] );
    else
    println( "preBlockY[ preBlockNum ]" + preBlockY[ preBlockNum ] );
 
    attackWall.play(); //かべにあたっときに音をならす
    
    if( under_ballHit < 5 ){
      under_ballHit++; //下面に当たったら行の数を一増やして
      arrangePreBlocks(); //追加のブロックの配置を追加する関数を呼び出す
    }
    //else{
      //exit();
    //}
    
    ballVY = -ballVY;
  }
  
  //else if( ballY + ballRadius == preBlockY[ preBlockNum ] ){
  
  //ボールと下のブロックが衝突したとき
  if( (ballY + ballRadius) - ( preBlockY[ preBlockNum ] ) == 0 ){
  //else if( (ballY + ballRadius) - ( preBlockY[ preBlockNum ] ) == 0 ){
    
    println( "ballY + ballRadius"+ ( ballY + ballRadius ) );
    println( "preBlockNum"+ preBlockNum );
    
    if( preBlockNum != 0 )
    println( "preBlockY[ preBlockNum ]" + preBlockY[ preBlockNum-1 ] );
    else
    println( "preBlockY[ preBlockNum ]" + preBlockY[ preBlockNum ] );
    
    attackWall.play(); //かべにあたっときに音をならす
    
    if( under_ballHit < 5 ){
      under_ballHit++; //下面に当たったら行の数を一増やして
      println( under_ballHit );
      arrangePreBlocks(); //追加のブロックの配置を追加する関数を呼び出す
    }
   // else{
     // exit();
    //}
    
    ballY = preBlockY[ preBlockNum ];
    ballVY = -ballVY;
  }
  */
  
  // ボールが増えたブロックと衝突する場合
  /*
  else if(){
  
  }   
  */
  /*
    else{ //下に落ちまくったらゲームオーバー
    println( "Game Over!!" );
    //てとりすのアニメーションみたいなのを流したい
    }*/
    //arrangePreBlocks(); //追加のブロックの配置を追加する関数を呼び出す
    
    //drawPreBlocks();//追加のブロックを描く関数ー＞はいってる
 
    //rect( blockX[i], blockY[i], blockWidth[i], blockHeight[i] );
    /*missCounter++;
    println("Miss!!");
    */
    /* ボール位置のリセット */
    //ballX = 100;  
    //ballY = 300;

    /* 何度かミスするとゲームオーバー 
    if( missCounter >= 5 ){
      println( "Game Over!!" );
      missCounter = 0;// ゲームをリセット
    }*/
 // }
}

void drawBall(){
  ellipse( ballX, ballY, ballRadius * 2, ballRadius * 2 );
}
