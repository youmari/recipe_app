class CreateShoppingLists < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_lists do |t|
      t.string :food
      t.string :quantity
      t.integer :price
      t.timestamps
    end
  end
end
