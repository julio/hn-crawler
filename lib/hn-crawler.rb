require "hn-crawler/index"
require "hn-crawler/future"
require "hn-crawler/outputter"
require "hn-crawler/page"
require "hn-crawler/version"
require "hn-crawler/crawler"

Hn::Crawler.new(Hn::Index.new).crawl
