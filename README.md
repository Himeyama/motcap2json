# Motcap2json

## 概要
大学のモーションキャプチャーのテキストファイルを JSON 形式に変換するプログラム。

## インストール

```sh
# インストール
gem install specific_install
gem specific_install -l "git://github.com/himeyama/motcap2json.git"
```

## Gemfile
```sh
gem "motcap2json", github: "himeyama/motcap2json", branch: :main
```


## コマンド
```sh
motcap2json xxxxx.txt
motcap2json xxxxx.txt > xxxxx.json # JSON ファイルに出力
```

## Ruby で使う
```ruby
#!/usr/bin/env ruby
require "bundler"
Bundler.require
require "motcap2json"

filename = "xxx.txt"
data = Motcap2json.parse(filename)
p data.size # マーカー数
p data[0].size # フレーム数
p data[2][3] # マーカー3の4フレーム目のデーター [時間, x, y, z]
```

## 開発

```ruby
# ビルド
bundle exec rake build
```
