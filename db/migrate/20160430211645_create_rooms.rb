class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|

      t.belongs_to :room_profiles, index: true, null: false

      t.timestamps null: false
    end
  end
end
