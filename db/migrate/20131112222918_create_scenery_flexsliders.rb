class CreateSceneryFlexsliders < ActiveRecord::Migration
  def change
    create_table :scenery_flexsliders do |t|
      t.boolean :active
      t.string :image
      t.string :image_tmp

      t.timestamps
    end

    create_table :scenery_flexslider_translations do |t|
      t.references :scenery_flexslider, index: true
      t.string :title
      t.string :locale
      t.text :content
      t.string :image
      t.string :image_tmp

      t.timestamps
    end

    add_index :scenery_flexslider_translations, :locale
  end
end
