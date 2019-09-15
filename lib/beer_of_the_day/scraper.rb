module BeerOfTheDay
  class Scraper

    def initialize  
      doc = Nokogiri::HTML(open('https://www.beeroftheday.com'))
    
  
    end
  end
end