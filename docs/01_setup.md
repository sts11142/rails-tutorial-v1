# 環境構築（1周目）

## Railsプロジェクト立ち上げまで
rubyのバージョンを確認（それとrbenvのインストール確認）
```
$ rbenv versions
```

`mkdir`で作成したプロジェクトディレクトリに移動してから，rubyをセット
```
$ rbenv local 3.2.2
```

```
$ ruby -v
```

`bundler`の確認
```
$ bundler -v
```

`Rails`のインストール準備  
（`gem`は確か`bundler`と一緒に入る）
```
$ gem list -e rails
```

Railsプロジェクトを作成  
（プロジェクト名にcurrent dirを指定するとそこに作成される）  
（チュートリアルに従って`--skip-bundle`）
```
$ rails _7.0.5_ new . --skip-bundle
```

`gem`をインストールとその準備
```
$ bundle config set --local without 'production'
```

```
$ bundle install
```


## Git/GitHubに接続する

```
$ git init

$ git status

$ git add -A

$ git commit -m "hoge"

$ git 
```