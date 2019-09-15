require "nokogiri"
require "open-uri"

class BeerOfTheDay::Scraper

  def initialize  
    doc = Nokogiri::HTML(open('https://www.beeroftheday.com'))
    
  
  end
 
end