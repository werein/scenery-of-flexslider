module Scenery
  class Flexslider < ActiveRecord::Base
    translates :title, :content
    validates :image, :translations, presence: :true
    accepts_nested_attributes_for :translations, allow_destroy: true

    mount_uploader :image, ::Uploadable::ImageUploader
    store_in_background :image

    scope :active, -> { where(active: true) }
  end
end