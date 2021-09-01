# MultiSurfaceBricksBreaker

JAIST1-2期の知識メディア方法論の授業課題の中間成果物。  
Processingを用いてMultiSurfaceBricksBreakerを開発した。  

# DEMO

## 成果物の発表資料。

![Inked1_LI](https://user-images.githubusercontent.com/55073758/131727406-2f9681e0-52f0-4cd3-8b01-27812ae75507.jpg)  
***
![3](https://user-images.githubusercontent.com/55073758/131727410-b361797a-f9bf-4f5c-81cd-023a18d6feff.png)  
***
![4](https://user-images.githubusercontent.com/55073758/131727412-0fc9aaa1-6925-4f45-a358-b4850ee460a0.png)  
***
![5](https://user-images.githubusercontent.com/55073758/131727414-560a8de8-bff8-44ac-a2f9-b933aff5ab07.png)  
***
![6](https://user-images.githubusercontent.com/55073758/131727417-a34d1963-ce6c-4c37-8d38-26621a3b8829.png)  
***
![7](https://user-images.githubusercontent.com/55073758/131727401-a8d52efa-7cc3-4aef-b2c2-a17b87de8613.png)  


## バーが上下左右に動ける制限。
![スクリーンショット (434)](https://user-images.githubusercontent.com/55073758/131727810-a60078ff-78b8-47fd-b75b-3d5f8233d018.png)
***
![スクリーンショット (435)](https://user-images.githubusercontent.com/55073758/131727813-cc5fdf98-f2f6-43cc-9b82-aa5bcc6f2c9c.png)
***
![スクリーンショット (436)](https://user-images.githubusercontent.com/55073758/131727817-8ccfa150-acc6-4434-8d88-050f5a940951.png)


# Features

ゲームで有名なブロック崩しにこれまでとは違う面白い要素を加えるアイデアを考えた。 
中間課題では、これまでの様々なブロック崩しゲームを調査した。
MultiSurfaceBricksBreakerは、サーベイから落ちたボールに着目されたゲームがなかったため、  
落ちたボールがゲーム性を与える要素になるようなアイデアを考えた。  

バーで打ち返せず、画面の下にボールが落ちると、その個数に対応して  
ボールが落ちると画面の下からブロックが迫ってくる。  
これをプレッシャーブロックと呼ぶことにした。  
プレッシャーブロックはバーが動ける上下方向の範囲を制限する。  
　　
BGM、SEなどをつけ、背景画像も変えてゲームの世界観を作った。


# Requirement

* Processing　

# Installation

* Processing　
* https://processing.org/

# Usage

遊び方はこんな感じ  
  
>［１］Processingを立ち上げる  
>［２］実行するー＞MultiSurfaceBricksBreakerのゲーム画面が立ちあがり、ゲームがスタートする  
>［３］キーボードの左右キーでバーを移動し、ボールを打ち返す  
>［４］クリアを目指す

## クリア条件は…  
* ブロックをにボールを当ててすべて壊す 

## 負け条件は…
* ブロックをすべて崩す前にボールを落としまくり、  
  画面下にプレッシャーブロックがすべて出現するとGAME OVER！！！！

# Note

 プレッシャーブロックの一番上がボールが跳ね返る下の部分としたかったが  
 実装できていなかったりもする。

# Author

* SakuraShimane

# License

"MultiSurfaceBricksBreakerDARUMA" is under [MIT license](https://en.wikipedia.org/wiki/MIT_License).

# Special Thanks

テンプレートをお借りしました。
ありがとうございます。

https://cpp-learning.com/readme/
