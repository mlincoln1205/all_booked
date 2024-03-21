# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations, id: :uuid do |t|
      t.datetime :checkin_at, null: false
      t.datetime :checkout_at, null: false
      t.integer :status, null: false, default: 0 # 0: pending, 1: confirmed, 2: canceled
      t.string :room_id, null: false
      t.string :guest_id, null: false
      t.string :user_id, null: false
      t.string :book_code, null: false, unique: true # => "RSV-000000"

      t.timestamps
    end
  end
end
