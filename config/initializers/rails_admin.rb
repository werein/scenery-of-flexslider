# RailsAdmin config file. Generated on October 16, 2013 22:03
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|

  config.model Scenery::Flexslider do
    navigation_icon 'icon-expand'
    field :active
    field :image
    field :translations
    list do
      field :active
      field :title
      field :image
      field :created_at do
        column_width 200
      end
    end
  end
  config.model Scenery::Flexslider::Translation do
    visible false
    field :title
    field :locale
    field :content, :ck_editor
  end
end if defined? RailsAdmin