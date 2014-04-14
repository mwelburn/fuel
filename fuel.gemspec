$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "fuel/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "fuel"
  s.version     = Fuel::VERSION
  s.authors     = ["Ryan Francis"]
  s.email       = ["ryan.p.francis@gmail.com"]
  s.homepage    = "http://github.com/LaunchPadLab/fuel"
  s.summary     = "Fuel is a dead simple blogging gem (mountable engine)"
  s.description = "Fuel's goal is to be a simple yet customizable blogging gem."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "friendly_id"
  s.add_dependency "redcarpet"
  s.add_dependency "kaminari"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"

end
