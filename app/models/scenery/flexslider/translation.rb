module Scenery
  class Flexslider::Translation < Globalize::ActiveRecord::Translation 
    extend Enumerize
    validates :title, length: { maximum: 255 }
    validates :locale, presence: true, uniqueness: { scope: :scenery_flexslider_id }

    enumerize :locale, in: I18n.available_locales
  end
end