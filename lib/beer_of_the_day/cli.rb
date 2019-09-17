module BeerOfTheDay
  class Cli 

    def call
      BeerOfTheDay::Scraper.scrape
      puts "" 
      puts "Welcome to Today's Beer Of The Day:"
      @input = nil
      menu
      while @input != "exit" 
        @input = gets.strip
        if  @input == "1"
          puts "This is the beer of the day:"
        elsif @input == "2"
          puts "This is the brewery that makes the beer of the day:"
        elsif @input == "menu"
          menu
        elsif @input == "exit" 
          puts "Check back tomorrow for the new beer of the day."
        break
        else
          puts "Not a valid option, select 1-3, or exit "
        end
      end
    end
  
    def menu
      puts "Select an option to get more information."
      puts ""
      puts <<-MENU
      1. Beer Name
      2. Brewery Name
      type "exit" at any time to leave program.
      type "menu" to return to the menu at any time.
      MENU
      puts ""
    end
  end          
end