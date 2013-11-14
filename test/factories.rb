include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :flexslider, class: Scenery::Flexslider do
    active true
    process_image_upload true
    image { fixture_file_upload('test/dummy/app/assets/images/kitchen_adventurer_caramel.jpg') }
    translations {[ association(:flexslider_translation), association(:flexslider_cs_translation)]}
  end

  factory :flexslider_translation, class: Scenery::Flexslider::Translation do
    title 'Kitchen'
    locale 'en'
    content 'Kitchen adventurer caramel'
  end

  factory :flexslider_cs_translation, class: Scenery::Flexslider::Translation do
    title 'Kuchyň'
    locale 'cs'
    content 'Kuchyň český popisek'
  end
end