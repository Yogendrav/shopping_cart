class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image
      t.string :product_name
      t.string :ccolor
      t.integer :quantity
      t.string :lens_options

      t.timestamps
    end
  end
end
