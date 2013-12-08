class AddPosition < ActiveRecord::Migration
  def change
    add_column :scenery_flexsliders, :position, :integer, default: 0
  end
end
