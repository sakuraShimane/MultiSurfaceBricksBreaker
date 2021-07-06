/*******************************
 Pressure Block! 迫りくるブロックの壁たち
 *******************************/
 
// 左右＋下の壁にくっつくブロック
float[] blockAddX = new float[ MAX_BLOCKS ];
float[] blockAddY = new float[ MAX_BLOCKS ];

float[] blockWidthAdd = new float[ MAX_BLOCKS ];
float[] blockHeightAdd = new float[ MAX_BLOCKS ];
boolean[] ballHitFlag = new boolean[ MAX_BLOCKS ];//ボールが当たったかどうか

  //fill = 0;

void drawPreBlocks(){
  print("add ");
  
  //if( blockAddX[fill] == 0){ //追加ブロックの配列が空なら
  ballHitFlag[fill] = true;
  
    blockAddX[fill] = ballX; // ボールがぶつかった位置を追加ブロックのＸにする
    blockAddY[fill] = ballY; 
    fill++;
    print( ballX+"," );
    print( ballY  );
    //rect( ballX, ballY, 100,15 );
    print( "fill ",+fill+"\n" );
    
  //}
  
  //rect( blockAddX[fill], blockAddY[fill], blockWidthAdd[fill], blockHeightAdd[fill] );
  rect( blockAddX[fill], blockAddY[fill], 100, 100 );
  
/*
  for( int i = 0; i < MAX_BLOCKS; i++ ){
    if( blockHitFlag[i] == false ){
      rect( blockX[i], blockY[i], blockWidth[i], blockHeight[i] );
    }
  }
  */
}
