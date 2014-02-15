class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image
      t.string :product_name
      t.string :price
      t.string :description
      t.string :category_id
      t.timestamps
    end
  end
end
