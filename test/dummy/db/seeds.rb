# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development? and Scenery::Flexslider.count == 0
  Scenery::Flexslider.create!(
    process_image_upload: true,
    active: true, image: File.open('test/dummy/app/assets/images/kitchen_adventurer_caramel.jpg'),
    translations_attributes: [{ title: 'Kuchyň', locale: 'cs', content: 'Kuchyň karamel' },
                              { title: 'Kitchen', locale: 'en', content: 'Kitchen adventurer caramel'} ])
  
  Scenery::Flexslider.create!(
    process_image_upload: true,
    active: true, image: File.open('test/dummy/app/assets/images/kitchen_adventurer_cheesecake_brownie.jpg'),
    translations_attributes: [{ title: 'Kuchyň cheesecake', locale: 'cs', content: 'Kuchyň cheesecake' },
                              { title: 'Kitchen cheesecake', locale: 'en', content: 'Kitchen adventurer cheesecake'} ])
end