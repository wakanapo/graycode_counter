# graycode_counter

counter.v：グレイコードのカウンタ。バイナリカウンタをグレイコードに変換することで実装している。

graycode_test.v：テストベンチ。

debounce.v：実際にFPGAに焼いて、ボード上のボタンで操作する時用のチャタリング除去のコード。

graycode_counter.v：チャタリング除去回路とカウンタ回路を繋いだFPGAに焼くとき用のトップレベルモジュール。
