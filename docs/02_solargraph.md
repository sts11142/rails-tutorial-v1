# これを書くに至った背景
RubyをVSCode環境でコーディングするとき，自動補完機能が欲しかったです．

最初期に`Solargraph`という拡張機能をインストールしていたのですが，どうやら拡張機能をインストールするだけでは使えないよう...

## What is Solargraph?
`Solargraph`は，いわゆるLanguage Serverです．  

こちらの記事をもとに，自動補完環境を整備していきます！！  
[「VSCode + Solargraph + RuboCop」の設定方法と動かないときの対処法](https://zenn.dev/shuhei_takada/articles/3a54ec970b0dee)

## 設定
やることは3つだけ．

1. VSCode拡張機能の`Solargraph`をインストール
1. `gem`の`Solargraph`をインストール
1. （VSCodeの`Settings`を開き，リアルタイム警告をオンにする）

```
# VSCode ExtentionのSolargraph

$ gem install solargraph

# VSCodeのSettingsでお好みの設定を
```