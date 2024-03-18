# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid do |t|
      t.string :username, null: false, unique: true
      t.string :email, null: false, unique: true
      t.string :password, null: false, unique: true

      t.timestamps
    end
  end
end
