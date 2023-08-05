# メモ

## Chap 3.1の最初のデプロイエラー
最初のデプロイでエラーが出ました．

```
> ! Unable to load application: LoadError: Error loading the 'postgresql' Active Record adapter. Missing a gem it depends on? pg is not part of the bundle. Add it to your Gemfile.
> bundler: failed to load command: puma (/opt/render/project/.gems/bin/puma)
```

チュートリアルのGemfileにならって，`production`環境に`pg`gemを記載し，`bundle install`しましょう．

`bundle install`ってなんだっけ？→[bundle installの実行内容とは？bundle updateとの違いも解説します【初心者必見】│「傍楽」ブログ](https://hataworakuni.net/bundle-install-and-update)

## action名の訂正方法
誤った名前でactionを作成してしまった場合の訂正方法．

コマンド操作よりも手動のが簡単？？

1. 該当するcontrollerファイルのアクション名を変更
1. `routes`のルーティング部分も変更
1. `view`の該当するファイル名を変更する
1. `test/controllers/static_pages_controller_test.rb`の`get`先のURLを変更する

→ Controllerを削除してもう一度作り直した方が早そう

## テストのコマンド
```
$ rails db:migrate
$ rails test
```

## rails helper
`routes.rb`に`root`を定義すると，`root_url`(ルートのURLを返すヘルパーが使えるようになる)

## Guardの起動方法
こちらの記事を参考にした（[【Rails】Guardによるテスト自動化の設定【Rails Tutorial 3章まとめ】 - Qiita](https://qiita.com/kagamiya9/items/ac110963166139f0b458)）

まずはチュートリアル第3章の最後の部分を参考にして，`bundle exec guard init`と`Guardfile.rb`を適切に編集する．

その後，`.gitignore`を編集する（gitの競合を解消する目的とかなんとか）
```
# Ignore Spring files.
/spring/*.pid
```

Guardを起動する（serveと同様起動し続けるタイプっぽいのでターミナルは別タブで）
```
$ bundle exec guard
```

終了は`Ctrl+D`で．


## `Missing frozen string literal coment.`について
Rubocopの警告です．Ruby2.3以降では，文字列リテラルで生成される文字列の値が変更されないようにfreezeするのが推奨されているとかなんとか？

警告を消したければ，`.rubocop.yml`を編集するか，以下のマジックコマンドをファイルの先頭に加えること．

`frozen_string_literal: true`

ただし，↑を書くと同じ文字列の変数は同じオブジェクトと見做されるようになるよう．

参考: [Rubyで #frozen_string_literal: true というマジックコメントを付ける意味 - Qiita](https://qiita.com/YutoYasunaga/items/98111ef50927ecb4135d)



# Fin
3.3.3