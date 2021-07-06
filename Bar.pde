/*******************************
  Bar
 *******************************/
 
float barX = 400.0f;
float barY = 950.0f;
float barVX = 10.0f;
float barWidth = 200.0f;
float barHeight = 30.0f;

void moveBar(){
  if( keyPressed ){
    if( keyCode == RIGHT ){
      barX = barX + barVX;
    }
    else if( keyCode == LEFT ){
      barX = barX - barVX;
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
  }
}

void drawBar(){
  rect( barX, barY, barWidth, barHeight );
}
