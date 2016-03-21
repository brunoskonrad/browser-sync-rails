$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "browser_sync_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "browser_sync_rails"
  s.version     = BrowserSyncRails::VERSION
  s.authors     = ["Bruno Konrad"]
  s.email       = ["bruno.skon@gmail.com"]
  s.homepage    = "https://google.com"
  s.summary     = "Nothing"
  s.description = "Add Browser Sync into a rails app"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end
