class BeerOfTheDay::CLI 

    def call
      puts "Today's Beer Of The Day:"
      @input = nil
      menu
    end
  
    def menu
      puts <<-MENU
      1. Beer Name
      2. Brewery Name
      3. Beer Catergory
      type "exit" or "quit" at any time to leave program.
      MENU
      while @input != "exit" && @input != "quit"
      @input = gets.strip
      case @input
      when "1"
        beer_name
      when "2"
        brewery_name
      when "3"
        beer_catergory  
      when "exit" || "quit"
        puts "Check back tomorrow for the new beer of the day."
      break
      else
        puts "Not a valid option"
      end
      end
    end        
end