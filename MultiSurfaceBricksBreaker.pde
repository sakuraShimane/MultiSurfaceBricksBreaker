/***************************************************
 K214　知識メディア方法論
 MultiSurfaceBricksBreaker
 https://github.com/sakuraShimane/MultiSurfaceBricksBreaker.git
 2021年6月29日: ブロック崩しゲームが最低限実装されたVer.
 ***************************************************/
 
// ライブラリをインポートする　Minim
/*import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;*/

// サウンドの再生
import processing.sound.*;
SoundFile soundfile;

// 追加のブロック配列がどこか保存する関数
 int fill = 0;
/*
Minim minim;
AudioPlayer wall;*/

// 02 音量とスピードをマウスで変化
/*import processing.sound.
SoundFile soundfile;*/

//  minim = Minim( this );
  
void setup(){
  size(1280, 1024);
  arrangeBlocks();
  soundfile = new SoundFile(this, "collideWall.mp3");
  soundfile.amp(0.5); // 音量 0～1
  //soundfile.play();
   //sound01= new Sound01(this, "collideWall.mp3");
  //wall = minim.loadFile( "collideWall.mp3" );
}

void draw(){
  background( 255, 255, 255 ); 
  
  line(barX,0,barX,500);
  // ellipse( barX, barY, 10, 10);
  //fill( 255, 0, 0 );
  ellipse( ballX, ballY, 10, 10);
  // line( barX + barWidth, 0, barX + barWidth, 500 );
  // point( barX, barY );
  // line( barX, barY, barX, 500 );
  
  /* BallとBarの衝突判定 */
  if ( ballX > barX && ballX < barX + barWidth ) {
  // if( ballX > barX - (barWidth/2) && ballX < barX + barWidth ){
    //if( ballY > barY && ballY < barY + barHeight ){
    if( ballY + ballRadius > barY && ballY < barY + ballRadius + barHeight ){
      soundfile.play(); //かべにあたっときに音をならす
      ballVY = - ballVY;
    }
  }

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
}

/*
void stop(){
//  wall.close();
  minim.stop();
  //super.stop();
}*/
