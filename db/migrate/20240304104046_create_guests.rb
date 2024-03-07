# frozen_string_literal: true

class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
