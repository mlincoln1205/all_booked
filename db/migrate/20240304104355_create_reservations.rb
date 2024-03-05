class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :checkin
      t.date :checkout
      t.string :status
      t.string :room_id
      t.string :guest_id
      t.string :user_id

      t.timestamps
    end
  end
end
