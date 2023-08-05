# メモ

## ページ作成の手順
1. ページのルートを追加（`config/routes.rb`）
1. ページ用のアクションをコントローラーに追加（`app/controllers/{controller_name}s_controller.rb`）
1. ページのビューを追加（`app/views/{controller_name}/{action_name}.html.erb`）

## 名前付きルート
`config/routes.rb`で`get '/hoge', to: 'hoge_huga#hoge'`のように定義すると，名前付きルートに対応するヘルパーが使えるようになる．
→ヘルパーは，テストファイルやビューで使用可能（テストファイルやビューで使うための機能？？）
