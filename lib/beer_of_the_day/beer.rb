class BeerOfTheDay::Beer
  attr_accessor :name, :category, :brewery, :url
  @@all = [] 
  
  def initialize(name, category, brewery, url)
    @name = name
    @category = category
    @brewery =brewery
    @url = url
    @@all << self
  end  
  def self.all
    @@all
  end  
end  