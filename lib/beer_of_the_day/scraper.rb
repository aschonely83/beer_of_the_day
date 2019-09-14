require "httparty"
require "nokogiri"

class BeerOfTheDay::Scraper
  
    def scraper
      url = https://www.beeroftheday.com/
      unparsed_page = HTTParty.get(url)
    end  
end    