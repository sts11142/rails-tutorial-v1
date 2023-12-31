# メモ

## fixtureの使い方をワスレタ
fixtureは，テスト用のユーザーを予め定義しておいて，それを簡単にロードして使うための（？）機能です．

使い方としては，次の2つ

* `test/fixtures/`で，例えば`users.yml`のようなyamlファイルを作成する
* `test/test_helper.rb`でfixtureをロードする手続きを追加する
    * `test_hepler.rb ActiveSupport::TestCase`内で，`fixtures :all`

あとは任意のテストファイルで`<ファイル名>(:<定義名>)`のようにして使えます（ex) `users(:michael)`）


## メモ化のキャッシュ機能，カプセル的意図はメソッド使用者に正しく伝わるのか？
メモ化の理屈が何となく掴めてきました．でもメモ化はよく使われているのか？という疑問が湧いたので少し調べて考えてみました．

#### 結論→最適化を考えるまで使わなくてもよさそう

今は最適化のためのテクニックとして覚えておくのが吉かと思いました．理由は

* 繰り返しの処理が減るだけ
* 同じリクエスト内であれば，railsのクエリキャッシュ機能がそもそも存在する

などです．詳しくは↓

* [Ruby: 私がメモ化を暗黙で使わない3つの理由（翻訳）｜TechRacho by BPS株式会社](https://techracho.bpsinc.jp/hachi8833/2023_07_20/131423)
* [Ruby: インスタンス変数初期化のメモ化`||=`はほとんどの場合不要｜TechRacho by BPS株式会社](https://techracho.bpsinc.jp/hachi8833/2020_06_25/74938)


## `will_paginate`のバージョンが互換していなかった
Gemfileについて，ここまでは基本的にバージョン指定を行わずにgemをインストールしてきました（互換性があるだろう，という何の根拠もない考え）．

`will_paginate`gemは，バージョンを`3.1.1`かその周辺バージョンにしないと正しく動作しません（`4.0.0`のようにメジャーバージョンが異なると，will_paginateに内部的に渡される引数の数が異なっているためエラーが出ました）


## `db:migrate:reset`って何だっけ？
db周りのコマンドはいくつか種類があるよう↓

参考：[rails db:reset、rails db:migrate:reset、rails db:setupの違い - Qiita](https://qiita.com/ken_ta_/items/9d2dd0d032f530311d2a)

* `db:reset`
* `db:migrate:reset`
* `db:setup`

知りたかったのは，`db:migrate:reset`がどのような処理になっているか，ということ（migrate，が含まれているけどこれが何を意味しているか理解していなかった）

結論は，上のリストの一個目と二個目の違いは`migration`を実行するか否か（あと二個目はseedを読み込まない）．データベースはリセットされ新しいテーブルが用意される．なるほど簡潔