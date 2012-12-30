module Hn
  class Outputter
    def initialize(page, index)
      @page  = page
      @index = index
    end

    def output
      puts "#{@index}) #{@page.title.strip.gsub(/\n/, ' ')}"
    end
  end
end