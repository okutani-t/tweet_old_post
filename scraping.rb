# coding: utf-8
require 'bundler'
Bundler.require
require 'kconv'
require 'open-uri'

module Scraping

  def fetch_old_post(url)
    old_posts = []

    # doc = Nokogiri::HTML(open(url).toutf8)
    doc = Nokogiri::HTML(open(url, &:read).toutf8)
    doc.xpath('//li[contains(@class, "post-item")]/a').each do |node|
      old_posts << {title: node.text,url: node.attribute('href').value}
    end

    # 重複を取り除く
    old_posts.uniq!

    # ランダムにひとつ返す
    old_posts.sample
  end

  module_function :fetch_old_post
end
