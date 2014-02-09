class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :picture
      t.text :description
      t.integer :category_id
      t.integer :capacity

      t.timestamps
    end
  end
end
