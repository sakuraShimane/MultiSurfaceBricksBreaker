/***************************************************

 K214　知識メディア方法論
 
 ゲーム名｜PressureBricksBreaker
 ゲーム概要｜ 落としちゃったボールの個数に応じて迫りくる壁！ 壁に押しつぶされるが先か、すべてのブロックを崩すが先か！ 上下左右の４方向に動くバーをたくみにあやつれ…
 
 開発者｜Nishikori Sakura
 開発日｜2021/07/08
 
 コード構成｜
 ー　MultiSurfaceBricksBreaker.pde
 ー　Ball.pde
 ー　Bar.pde
 ー　Block.pde
 ー　PreBlock.pde
 
 テトリスの画像
https://www.flaticon.com/authors/prettycons

 ***************************************************/

/* サウンドの再生にはminimではなく、Processingの外部ライブラリ「sound」を使いました */

import processing.sound.*;
SoundFile soundfile;
SoundFile bgm; //ゲーム中のBGM
SoundFile attackWall; //ボールと壁の衝突音
SoundFile attackBar; //ボールとバーの衝突音

PImage img01; //背景画像を読み込み

int under_ballHit = 0; //下の壁にぶつかった回数を保持する関数
 
void setup(){ //実行時1回だけ処理される
  size( 800, 1200 ); //テトリスの2:3画面をイメージした画面サイズを設定
  arrangeBlocks(); //画面上部に表示される消す対象のブロック配置を初期化する関数を呼び出す
  
  /* ゲーム内で使う音声ファイルを読み込む　*/
  bgm = new SoundFile( this, "bgm.mp3");
  soundfile = new SoundFile(this, "collideWall.mp3");
  attackWall = new SoundFile( this, "attackWall.mp3");
  attackBar = new SoundFile( this, "attackBar.mp3");
  soundfile.amp(0.5); // 音量 0～1
  img01 = loadImage( "background_m.jpg" ); //<>// //<>//
  
  bgm.play(); //ゲーム中のBGMを再生

}

void draw(){

  image( img01, 0, 0 ); //背景に画像を設定

  /*　プレッシャー壁の残り枚数を表示　*/
  textSize( 40 );
  text( "Pressure Brick Breaker ", 0, height/2 );
  text( "Remaining"+ ( 10 - under_ballHit ) +"!!", 0, height/2 + 50 );
  
  /* BallとBarの衝突判定 */
  if ( ballX >= barX && ballX <= barX + barWidth ) { //Ballがx軸上でBarの幅にかぶっていて
    if( ballY + ballRadius > barY && ballY - ballRadius < barY + barHeight ){ //y軸上Ballの端とBarがかぶっていたら
      soundfile.amp(0.5); //0～1の音量範囲のうち0.5の音量で
      attackBar.play(); //BallとBarの衝突時に効果音を出力する
      ballVY = - ballVY; //衝突したのでy軸の等速度を変える
    }
  }

  /* Ballと複数Blockの衝突判定 */
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
  
  /* PreBlockの配置を指定する関数の呼び出し */
  drawPreBlocks();
}
