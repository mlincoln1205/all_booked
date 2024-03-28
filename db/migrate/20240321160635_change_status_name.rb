class ChangeStatusName < ActiveRecord::Migration[7.0]
  def change
    rename_column :reservations, :status, :reservation_status
    rename_column :rooms, :status, :room_status
  end
end
