class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms, id: :uuid do |t|
      t.integer :number
      t.string :category
      t.boolean :pool
      t.string :status
      t.integer :capacity

      t.timestamps
    end
  end
end
