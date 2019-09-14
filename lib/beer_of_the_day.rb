require "beer_of_the_day/version"
require_relative "beer_finder/scraper"
require_relative "beer_finder/cli"
require_relative "beer_finder/beer"


module BeerOfTheDay
  class Error < StandardError; end
  # Your code goes here...
end
