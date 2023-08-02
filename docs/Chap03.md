# Errors
## Chap 3.1の最初のデプロイエラー
最初のデプロイでエラーが出ました．

```
> ! Unable to load application: LoadError: Error loading the 'postgresql' Active Record adapter. Missing a gem it depends on? pg is not part of the bundle. Add it to your Gemfile.
> bundler: failed to load command: puma (/opt/render/project/.gems/bin/puma)
```

チュートリアルのGemfileにならって，`production`環境に`pg`gemを記載し，`bundle install`しましょう．

`bundle install`ってなんだっけ？→[bundle installの実行内容とは？bundle updateとの違いも解説します【初心者必見】│「傍楽」ブログ](https://hataworakuni.net/bundle-install-and-update)