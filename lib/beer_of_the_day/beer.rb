module BeerOfTheDay
  class Beer
    attr_accessor :name, :brewery
    @@all = [] 
  
    def initialize(name, brewery)
      @name = name
      @brewery = brewery
      @@all << self
    end  
    
    def self.all
      @@all
    end
  end    
end  
