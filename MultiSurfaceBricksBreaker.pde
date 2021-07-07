/***************************************************
 K214　知識メディア方法論
 MultiSurfaceBricksBreaker
 https://github.com/sakuraShimane/MultiSurfaceBricksBreaker.git
 2021年6月29日: ブロック崩しゲームが最低限実装されたVer.
 soundの説明を追加する
 
テトリスの画像
https://www.flaticon.com/authors/prettycons
 ***************************************************/

// サウンドの再生
import processing.sound.*;
SoundFile soundfile;
SoundFile attackWall;//かべとぶつかったときの音
SoundFile attackBar;//バーとぶつかったときの音

PImage img01,img02;

// 追加のブロック配列がどこか保存する関数
 int fill = 0;
 int under_ballHit = 0;// 下面でどこまであたったか保持する関数
 //int scene = 0;
 
 String scene = "start";
 
void setup(){//実行時１回だけ
  //size(1280, 1024);
  size( 800, 1200 );//テトリスの2:3画面をイメージ
  //size( 700, 1050 );//テトリスの2:3画面をイメージ
  arrangeBlocks();
  soundfile = new SoundFile(this, "collideWall.mp3");
  attackWall = new SoundFile( this, "attackWall.mp3");
  attackBar = new SoundFile( this, "attackBar.mp3");
  soundfile.amp(0.5); // 音量 0～1
  //gameInit();
  img01 = loadImage( "background_m.jpg" );
  img02 = loadImage( "gameboy.png" );
  //size( img.width, img.height );
  //img.resize( img.width/2, img.height/2 );
}

void draw(){

  common();
  if( scene == "start" ){
    start_scene();
  }
  image( img01, 0, 0 );
  //background( 255, 255, 255 ); 
  
  //while( keyPressed != true ){//キーおされまち　うまくいかない
  
  //fill( random( 255 ), random( 255 ), random( 255 ) );
  textSize( 40 );
  text( "Pressure Brick Breaker ", 0, height/2 );
  text( "Remaining"+ ( 10 - under_ballHit ) +"!!", 0, height/2 + 50 );
  //}
  
  
 /* if( scene == 0 ){
    gameTitle();
  }
  else if( scene == 1 ){
     gamePlay();
  }
  else if( scene == 2 ){
  gameOver();
  }*/

  
  //line(barX,0,barX,500);
  // ellipse( barX, barY, 10, 10);
  //fill( 255, 0, 0 );
  //ellipse( ballX, ballY, 10, 10);
  // line( barX + barWidth, 0, barX + barWidth, 500 );
  // point( barX, barY );
  // line( barX, barY, barX, 500 );
  
  /* BallとBarの衝突判定 */
  if ( ballX >= barX && ballX <= barX + barWidth ) {
    //if( ballY + ballRadius > barY ){
    //if( ballY + ballRadius > barY && ballY < barY + ballRadius + barHeight ){
    if( ballY + ballRadius > barY && ballY - ballRadius < barY + barHeight ){
      //if( ballY + ballRadius >= barY ){
      soundfile.amp(0.5);
      attackBar.play(); //かべにあたっときに音をならす
      ballVY = - ballVY;
    }
  }
  
  /* ballと下面から追加のブロックの衝突判定 */

  /* Step2-2. Ballと複数Blockの衝突判定 */
  for( int i = 0; i < MAX_BLOCKS; i++ ){
    if( blockHitFlag[i] == false ){
      if( ballX > blockX[i] && ballX < blockX[i] + blockWidth[i] ){
        if( ballY > blockY[i] && ballY < blockY[i] + blockHeight[i] ){
          soundfile.play(); //かべにあたっときに音をならす
          ballVY = - ballVY;     
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
  
  /* PreBlock */
  drawPreBlocks();
}

void common(){
  background( 255 );
}

void start_scene(){
  fill(0);
  text("Start", width/5, height/2);
  text("Press any key", width/5, height/2+60);
 }
 
void mousePressed(){ 
  // ゲームシーンへ遷移
  if( scene == "start" ) scene = "game"; 
}

/*
void gameInit(){
  scene = 0;
}

void gameTitle(){
  //background(255);
  //fill(0);
  background( 255, 255, 255 );
  while( keyPressed != true){//キーおされまち
  textSize( 20 );
  text("Title Scene",width/2,height/2);
  }
  
}
void gamePlay(){

}
void gameOver(){
background( 255, 255, 255 );
}
*/

/*
void stop(){
//  wall.close();
  minim.stop();
  //super.stop();
}*/
