# coding: utf-8
require 'twitter'
require 'yaml'
require './scraping'

# 引数のエラー処理
if ARGV[0] == nil
  puts 'please input args! ex: $ ruby tweet_old_post.rb http://example.com/sitemap'
  exit
end

URL = ARGV[0]
keys = YAML.load_file('keys.yml')

# スクレイピング
old_post = Scraping.fetch_old_post(URL)
p old_post
# Twitter投稿
# client = Twitter::REST::Client.new(keys)
# client.update(old_post[:title] + ' ' + old_post[:url])
