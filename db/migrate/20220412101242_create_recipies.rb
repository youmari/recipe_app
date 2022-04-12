class CreateRecipies < ActiveRecord::Migration[7.0]
  def change
    create_table :recipies do |t|
      t.string :name
      t.string :measurement_unit
      t.integer :preparation_time
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
    add_index :foods, :price
  end
end
