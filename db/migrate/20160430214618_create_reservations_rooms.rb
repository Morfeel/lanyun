class CreateReservationsRooms < ActiveRecord::Migration
  def change
    create_table :reservations_rooms, id: false do |t|

      t.belongs_to :reservations, index: true, null: false
      t.belongs_to :rooms, index: true, null: false

    end
  end
end
