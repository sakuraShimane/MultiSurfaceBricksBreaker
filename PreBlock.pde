/*******************************
 Pressure Block! 迫りくるブロックの壁たち
 *******************************/
 
final int MAX_PREBLOCKS = 624;//追加ブロックの全部の個数
final int PREBLOCK_ROWS  =  16;  // ブロックの列の要素数　横に何個並ぶか

// 左右＋下の壁にくっつくブロック
float[] preBlockX = new float[ MAX_PREBLOCKS ];
float[] preBlockY = new float[ MAX_PREBLOCKS ];

float[] preBlockWidth = new float[ MAX_PREBLOCKS ];
float[] preBlockHeight = new float[ MAX_PREBLOCKS ];
boolean[] preBlockHitFlag = new boolean[ MAX_PREBLOCKS ];//ボールが当たったかどうか

  //int pre_i = 0; //追加ブロックの数？
  int preBlockNum = 0; //追加ブロックの数　配列の長さ
  
//追加のブロックを描く関数　まずは下面だけ
void drawPreBlocks(){
  print("add ");
  //arrangePreBlocks();//追加ブロックの座標を入れる関数
  
  int j = 0;
 //under_ballHit が0にならない間、一行ふやす
 //while( under_ballHit != 0){
   while( preBlockHitFlag[ j ] == true ){
   //for( int i = 0; i < MAX_PREBLOCKS; pre_i++ ){
     //if( preBlockHitFlag[pre_i] == true ){
     rect( preBlockX[ j ], preBlockY[ j ], preBlockWidth[ j ], preBlockHeight[ j ] );
     //rect( preBlockX[i], preBlockAddY[i]-100,  100, 100);
     //}
     j++;
   }
  // under_ballHit--;
 //}//while終わり
}

/* 追加のブロックの座標の配置処理 */
void arrangePreBlocks(){
  
  //int under_row = 0;
  int i = 0;
  //under_row = under_ballHit;
  
  //while( under_row > 0  ){
  while( i < 16 ){ //2行16個分のブロックをつくる x軸
    preBlockWidth[ preBlockNum ] = 78.0f;
    preBlockHeight[ preBlockNum ] = 15.0f;
    preBlockHitFlag[ preBlockNum ] = true;
    preBlockX[ preBlockNum ] = BLOCK_GAP + i % PREBLOCK_ROWS * ( preBlockWidth[ preBlockNum ] + BLOCK_GAP );
    preBlockY[ preBlockNum ] = height - preBlockHeight[ preBlockNum ] * under_ballHit ;
    //preBlockY[i] = height + BLOCK_GAP + i / BLOCK_ROWS * ( blockHeight[i] + BLOCK_GAP );
    
    preBlockNum++;//ブロックの要素数を1つふやす
    print(preBlockNum);
    i++;// x軸を1つ右にずらす
  }
  //under_ballHit--;
  }
//}
  
/*
  for( int i = 0; i < MAX_BLOCKS; i++ ){
    if( blockHitFlag[i] == false ){
      rect( blockX[i], blockY[i], blockWidth[i], blockHeight[i] );
    }
  }
  */
