class BeerOfTheDay::Beer
    attr_accessor :name, :category, :brewery, :url 

    def self.scrape_beer
      doc = Nokogiri::HTML(open("https://www.beeroftheday.com/"))

      beer = self.new
      beer.name = doc
      beer.category = doc
      beer.brewery = doc
      beer.url = doc
    end

end
