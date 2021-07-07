/*******************************
 Pressure Block! 迫りくるブロックの壁たち
 *******************************/
 
// 左右＋下の壁にくっつくブロック
float[] preBlockX = new float[ MAX_BLOCKS ];
float[] preBlockY = new float[ MAX_BLOCKS ];

float[] preBlockWidth = new float[ MAX_BLOCKS ];
float[] preBlockHeight = new float[ MAX_BLOCKS ];
boolean[] preBlockHitFlag = new boolean[ MAX_BLOCKS ];//ボールが当たったかどうか

  //fill = 0;

//追加のブロックを各関数
void drawPreBlocks(){
  print("add ");
  arrangePreBlocks();//追加ブロックの座標を入れる関数
  
  //if( blockAddX[fill] == 0){ //追加ブロックの配列が空なら
  //under_ballHit++; //下面に当たったら

  /*わたるくんいやってもらったボールが当たったところにブロックが増える処理
    preBlockX[fill] = ballX; // ボールがぶつかった位置を追加ブロックのＸにする
    preBlockY[fill] = ballY; 
    fill++;
    print( ballX+"," );
    print( ballY  );
    //rect( ballX, ballY, 100,15 );
    print( "fill ",+fill+"\n" );
    */
   
  //}
  // 下面との衝突判定だけ
  //rect( blockAddX[fill], blockAddY[fill], blockWidthAdd[fill], blockHeightAdd[fill] );

  /*わたるくんいやってもらったボールが当たったところにブロックが増える処理
  rect( preBlockX[fill], preBlockY[fill], 100, 100 );//ボールがぶつかったXを基準にブロックを追加
  */
 //ボールがぶつかったXを基準に一行ブロックを追加
 // Block.prsから持ってきた、ブロックの配置処理のところ
 //int pre_i = 0;
 // preBlock関数に座標を入れるー＞バーとボールの当たり判定がやりやすくなる
 
 //preBlockY[i] = preBlockHeight * under_ballHit;
 
 //under_ballHit が０にならない間、一行ふやす
 //while( under_ballHit != 0){
   for( int i = 0; i < MAX_BLOCKS; i++ ){
     if( preBlockHitFlag[i] == true ){
     rect( preBlockX[i], preBlockY[i], blockWidth[i], blockHeight[i] );
     //rect( preBlockX[i], preBlockAddY[i]-100,  100, 100);
     }
   }
  // under_ballHit--;
 //}//while終わり
}

/* 追加のブロックの座標の配置処理 */
void arrangePreBlocks(){
  
  int i = 0;
  int under_row = 0;
  
  under_row = under_ballHit;
  
  while( under_row > 0  ){
  while( i < MAX_BLOCKS ){
    preBlockWidth[i] = 78.0f;
    preBlockHeight[i] = 15.0f;
    preBlockHitFlag[i] = true;
    preBlockX[i] = BLOCK_GAP + i % BLOCK_ROWS * ( blockWidth[i] + BLOCK_GAP );
    preBlockY[i] = height - preBlockHeight[i] * under_row ;
    //preBlockY[i] = height + BLOCK_GAP + i / BLOCK_ROWS * ( blockHeight[i] + BLOCK_GAP );
    i++;
  }
  under_row--;
  }
}
  
/*
  for( int i = 0; i < MAX_BLOCKS; i++ ){
    if( blockHitFlag[i] == false ){
      rect( blockX[i], blockY[i], blockWidth[i], blockHeight[i] );
    }
  }
  */
