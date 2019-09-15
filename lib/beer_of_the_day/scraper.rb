class BeerOfTheDay::Scraper
    attr_accessor :name, :category, :brewery, :url 

    def self.scrape
      doc = Nokogiri::HTML(open('https://www.beeroftheday.com'))

      name = doc
      category = doc
      brewery = doc
      url = doc 
      
    end

end