# coding: utf-8
require 'twitter'
require 'yaml'
require './scraping'

keys = YAML.load_file('keys.yml')

URL = ARGV[0]

# 引数のエラー処理
if URL == nil
  puts 'please input args! ex: $ ruby tweet_old_post.rb http://example.com/sitemap'
  exit
end

# スクレイピング
old_post = Scraping.fetch_old_post(URL)

# Twitter投稿
client = Twitter::REST::Client.new(keys)
client.update(old_post[:title] + ' ' + old_post[:url])
