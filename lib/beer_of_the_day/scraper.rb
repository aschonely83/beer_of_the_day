module BeerOfTheDay
  class Scraper

    def self.scrape  
      doc = Nokogiri::HTML(open('https://www.beeroftheday.com'))

      @name = doc.css('h1.beer_title').text
      @brewery = doc.css('a.dark_link').first.text
      BeerOfTheDay::Beer.new(@name, @brewery)
    end
  end
end    