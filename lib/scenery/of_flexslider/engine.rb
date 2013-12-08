require 'cells'
require 'globalize'
require 'enumerize'
require 'rails_i18n'

require 'flexslider/rails'

module Scenery
  module OfFlexslider
    class Engine < Rails::Engine

      isolate_namespace Scenery
      engine_name :scenery_of_flexslider

      initializer :append_migrations do |app|
        unless app.root.to_s.match root.to_s
          config.paths['db/migrate'].expanded.each do |expanded_path|
            app.config.paths['db/migrate'] << expanded_path
          end
        end
      end
    end
  end
end