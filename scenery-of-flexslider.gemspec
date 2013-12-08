$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scenery/of_flexslider/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scenery-of-flexslider"
  s.version     = Scenery::OfFlexslider::VERSION
  s.authors     = ["Jiri Kolarik"]
  s.email       = ["jiri.kolarik@imin.cz"]
  s.homepage    = "http://werein.cz"
  s.summary     = "Flexslider slider with backend."
  s.description = "#{s.summary} designed for Project."

  s.files       = Dir["{app,config,db,lib}/**/*", "LICENSE.txt", "Rakefile", "README.rdoc"]
  s.test_files  = Dir["test/*.*" ,"test/{cells,controllers,data,helpers,integration,models}/**/*","test/dummy/*.*", "test/dummy/{app,bin,config,db,lib}/**/*"]

  s.add_dependency 'rails', '~> 4.0'
  s.add_dependency 'cells', '~> 3.9'
  s.add_dependency 'flexslider-rails', '~> 1.0'
  s.add_dependency 'globalize', '~> 4.0.0.alpha.2'
  s.add_dependency 'globalize-missing', '~> 1.0.0'
  s.add_dependency 'enumerize', '~> 0.7'
  s.add_dependency 'rails-i18n', '~> 4.0'

  s.add_development_dependency 'testable'
end