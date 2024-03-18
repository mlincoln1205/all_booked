# frozen_string_literal: true

class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms, id: :uuid do |t|
      t.integer :number, null: false, unique: true
      t.integer :room_type, null: false, default: 0 # 0: single, 1: double, 2: suite
      t.integer :status, null: false, default: 0 # 0: available, 1: unavailable
      t.integer :capacity, null: false, default: 1

      t.timestamps
    end
  end
end
