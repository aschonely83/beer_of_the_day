lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "beer_of_the_day/version"

Gem::Specification.new do |spec|
  spec.name          = "beer_of_the_day"
  spec.version       = BeerOfTheDay::VERSION
  spec.authors       = ["Adam Schonely"]
  spec.email         = ["aschonely@gmail.com"]

  spec.summary       = %q{Displays a beer of the day by scraping beeroftheday.com}
  spec.description   = %q{CLI program for navigating through beeroftheday.com}
  spec.homepage      = "https://github.com/aschonely83/beer_of_the_day"
  spec.license       = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aschonely83/beer_of_the_day"
  spec.metadata["changelog_uri"] = "https://github.com/aschonely83/beer_of_the_day"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  # spec.bindir        = "exe"
  spec.executables   = ["beer_of_the_day"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_dependency "nokogiri", "~> 1.10"
end
