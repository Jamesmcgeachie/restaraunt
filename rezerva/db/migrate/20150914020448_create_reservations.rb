class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :reservation_time
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
