class CreateRoomProfiles < ActiveRecord::Migration
  def change
    create_table :room_profiles do |t|

      t.string :name, default: "unknown", unique: true, null: false
      t.integer :capacity, default: 1, null: false
      t.integer :bed_count, null: false, default: 1
      t.decimal :price, null: false, precision: 6, scale: 2, default: 100.00

      t.timestamps null: false
    end
  end
end
