$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scenery/of_flexslider/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scenery-of-flexslider"
  s.version     = Scenery::OfFlexslider::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SceneryOfFlexslider."
  s.description = "TODO: Description of SceneryOfFlexslider."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'cells', '~> 3.9'
  s.add_dependency 'flexslider-rails', '~> 1.0'
  s.add_dependency 'globalize', '~> 4.0.0.alpha.2'
  s.add_dependency 'enumerize', '~> 0.7'
  s.add_dependency 'rails-i18n', '~> 4.0'

  s.add_development_dependency 'testable'
end