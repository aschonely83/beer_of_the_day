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
      3. Beer Category
      type "exit" or "quit" at any time to leave program.
      MENU
      while @input != "exit" 
      @input = gets.strip
      case @input
      when "1"
        @name
      when "2"
        @brewery
      when "3"
        @catergory  
      when "exit" 
        puts "Check back tomorrow for the new beer of the day."
      break
      else
        puts "Not a valid option, select 1-3, or exit "
      end
      end
    end        
end