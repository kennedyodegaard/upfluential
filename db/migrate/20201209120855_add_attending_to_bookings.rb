class AddAttendingToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :attending, :boolean, default: false, null: false 
  end
end
