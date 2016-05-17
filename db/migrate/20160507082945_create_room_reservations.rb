class CreateRoomReservations < ActiveRecord::Migration
  def change
    create_table :room_reservations do |t|

      t.belongs_to :reservation, index: true, null: false
      t.belongs_to :room, index: true, null: false

      t.date :start_date, null:false
      t.date :end_date, null:false

      t.timestamps null: false
    end
  end
end
