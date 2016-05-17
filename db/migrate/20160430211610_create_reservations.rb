class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|

      t.string :status, null: false, default: "booked"

      t.belongs_to :user, index: true, null: false

      t.timestamps null: false
    end

  end
end
