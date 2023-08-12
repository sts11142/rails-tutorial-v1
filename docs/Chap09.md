# メモ

## 不明な点
* sessionはどんな属性を持っているんだっけ？暗号化されてた？
* cookieもどんな属性を持っているっけ？（暗号化はされてたはず）
    * →`:user_id`, `:remember_token`
* 両者の棲み分けは？


## solargraphのエラー解消
> `Required path test_helper could not be resolved.` in `test/integration/users_login_test.rb>RememberingTest | Line 1`

SolargraphのREADMEに記載がありました．

```
$ solargraph config .
```

以下が該当箇所
```:yml
include:
  - ./**/*.rb
exclude:
  - spec/**/*
```