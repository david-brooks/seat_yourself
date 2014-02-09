class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :begin_time
      t.integer :restaurant_id
      t.integer :user_id
      t.text :notes
      t.integer :people

      t.timestamps
    end
  end
end
