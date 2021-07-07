/*******************************
  Bar
 *******************************/
 
float barX = 400.0f;
float barY = 950.0f;
//float barVX = 10.0f; もとのやつ
float barVX = 15.0f;
float barWidth = 200.0f;
float barHeight = 30.0f;

void moveBar(){
  if( keyPressed ){
    if( keyCode == RIGHT ){
      barX = barX + barVX;
      //barX = barX + 5;
      //print("right：");
      //print(ballX+"\n");
    }
    else if( keyCode == LEFT ){
      barX = barX - barVX;
      //barX = barX - 5;
      print("left：");
      print(ballX+"\n");
    }
    else if( keyCode == UP){
      barY = barY - 5;
    }
    else if( keyCode == DOWN ){
      barY = barY + 5;
    }
    // ここから追加
    //print(displayWidth);
    //右端にぶつかったらとまる
    if( barX + barWidth >= width ){
      barX = width - barWidth;
    }
    //左端にぶつかったら止まる
    if( barX <= 0 ){
      barX = 0;
    }
    
   /* おいとく　barと下面から追加のブロックの衝突判定 
  //if ( ballX > barX && ballX < barX + barWidth ) {
    if( preBlockNum != 0 ){
    if( ballY + ballRadius >= preBlockY[ preBlockNum ] ){ //ボール端が下から追加のブロックの上側以上になったとき、はねかえる
      soundfile.amp(0.5);
      soundfile.play(); //かべにあたっときに音をならす
      ballVY = - ballVY;
    }
    }
    */
  
  }
}

void drawBar(){
  rect( barX, barY, barWidth, barHeight );
}
