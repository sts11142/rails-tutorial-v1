# メモ

## fixtureの使い方をワスレタ
fixtureは，テスト用のユーザーを予め定義しておいて，それを簡単にロードして使うための（？）機能です．

使い方としては，次の2つ

* `test/fixtures/`で，例えば`users.yml`のようなyamlファイルを作成する
* `test/test_helper.rb`でfixtureをロードする手続きを追加する
    * `test_hepler.rb ActiveSupport::TestCase`内で，`fixtures :all`

あとは任意のテストファイルで`<ファイル名>(:<定義名>)`のようにして使えます（ex) `users(:michael)`）