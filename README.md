# Tweet Old Post

過去記事をツイートするRubyプログラム

## Description

WordPressサイトマップ（PS Auto Sitemap）をスクレイピングし、ランダムでひとつTweetするプログラム。

## Requirement

nokogiriとtwitterのgemが必要（Gemfileに記述済み）。

``` ruby
gem 'nokogiri'
gem 'twitter'
```

## Install&Settings

本体をクローン。

```shellscript
$ git clone https://github.com/okutani-t/tweet_old_post.git
```

gemをインストール。

```shellscript
$ bundle install
```

keys.ymlを生成&編集。

```shellscript
$ cp keys_sample.yml keys.yml

$ vi keys.yml
consumer_key: CONSUMER_KEY
consumer_secret: CONSUMER_SECRET
access_token: ACCESS_TOKEN
access_token_secret: ACCESS_SECRET
```

## Usage

自分のサイトのサイトマップを引数にして実行する。

```shellscript
$ ruby tweet_old_post.rb http://example.com/sitemap
```

## Author

[okutani](http://okutani.net)
