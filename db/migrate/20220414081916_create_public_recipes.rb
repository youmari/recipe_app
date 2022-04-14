class CreatePublicRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :public_recipes do |t|
      t.string :recipe_name
      t.string :food_item
      t.integer :total_price
      t.timestamps
    end
  end
end
