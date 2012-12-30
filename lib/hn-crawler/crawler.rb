module Hn
  class Crawler
    def initialize(index)
      @index = index
    end

    def crawl
      pages.each_with_index do |page, index|
        Outputter.new(page, index+1).output
      end
    end

    private

    def pages
      @index.urls.map do |url|
        future{ Page.new(url).get }
      end
    end
  end
end