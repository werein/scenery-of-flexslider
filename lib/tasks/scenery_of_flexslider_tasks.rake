# desc "Explaining what the task does"
# task :scenery_of_flexslider do
#   # Task goes here
# end

# desc "Explaining what the task does"
# task :gallery do
#   # Task goes here
# end

namespace :scenery_of_flexslider do
  desc "Regenerate all images on expositions"
  task recreate_versions: :environment do 
    Scenery::Flexslider.all.each do |i|
      if i.image.file.exists?
        i.process_image_upload = true if defined?(CarrierWave::Backgrounder)
        i.image.recreate_versions!
      else
        i.destroy
      end
    end
  end
end