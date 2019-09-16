module BeerOfTheDay
  class Cli 

    def call
      list_beer
      list_brewery
      menu
    end
    
    def list_beer
      puts "Today's Beer Of The Day:"
      @name = BeerOfTheDay::Scraper.scrape
    end
    
    def list_brewery
      puts "Today's Brewery Of The Day:"
      @brewery = BeerOfTheDay::Scraper.scrape
    end
    

    def menu
      @input = nil
      while @input != "exit" 
        puts "Enter the number you want would like more info about."
        @input = gets.strip
      
      puts <<-MENU
      1. Beer Name
      2. Brewery Name
      type "exit" at any time to leave program.
      MENU
     
      case @input
      when @input == "1"
        list_beer
      when @input == "2"
        list_brewery
      when "exit" 
        puts "Check back tomorrow for the new beer of the day."
      break
      else
        puts "Not a valid option, select 1-3, or exit "
      end
      end
    end
  end          
end