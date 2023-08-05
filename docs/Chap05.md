# まだ分からないこと
* 統合テストの作り方
  * どういうファイルを作るっけ？
  * ファイルのどこに何を書くっけ？
* helperのテストの作り方
  * 同上
* Bootstrapのクラス名
  * React勉強の時に使ってみよう
* Guardの詳細設定
  * 実行間隔をもう少し遅らせたい
  * どのファイルの変更を検知しているのか現状の設定を確認しておく


# メモ

## ページ作成の手順
1. ページのルートを追加（`config/routes.rb`）
1. ページ用のアクションをコントローラーに追加（`app/controllers/{controller_name}s_controller.rb`）
1. ページのビューを追加（`app/views/{controller_name}/{action_name}.html.erb`）

## 名前付きルート
`config/routes.rb`で`get '/hoge', to: 'hoge_huga#hoge'`のように定義すると，名前付きルートに対応するヘルパーが使えるようになる．
→ヘルパーは，テストファイルやビューで使用可能（テストファイルやビューで使うための機能？？）
