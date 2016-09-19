# coding: utf-8
require 'bundler'
Bundler.require
require 'kconv'
require 'open-uri'

class Scraping

  def initialize
    @old_posts = []
  end

  def fetch_old_posts(url)
    # doc = Nokogiri::HTML(open(url).toutf8)
    doc = Nokogiri::HTML(open(url, &:read).toutf8)
    doc.xpath('//li[contains(@class, "post-item")]/a').each do |node|
      @old_posts << {title: node.text,url: node.attribute('href').value}
    end
    # 重複を取り除く
    @old_posts.uniq!
  end

  attr_accessor :old_posts
end
