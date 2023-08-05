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




# Fin
3.3.3