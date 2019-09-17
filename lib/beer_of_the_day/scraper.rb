module BeerOfTheDay
  class Scraper

    def self.scrape_name  
      doc = Nokogiri::HTML(open('https://www.beeroftheday.com'))

      @name = doc.css('h1.beer_title').text
    end

    def self.scrape_brewery
      doc = Nokogiri::HTML(open('https://www.beeroftheday.com'))

      @brewery = doc.css('a.dark_link').first.text
    end  
  end
end    