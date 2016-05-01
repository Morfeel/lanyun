class CreateRoomBedProfiles < ActiveRecord::Migration
  def change
    create_table :room_bed_profiles do |t|

      t.belongs_to :room_profile, index: true, null: false
      t.belongs_to :bed_profile, index: true, null: false
      t.integer :qty

      t.timestamps null: false
    end
  end
end
