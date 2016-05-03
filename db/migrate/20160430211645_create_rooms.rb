class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|

      t.string :name, null:false, default: 'unknown', unique: true

      t.belongs_to :room_profile, index: true, null: false

      t.timestamps null: false
    end
  end
end
