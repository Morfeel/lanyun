class CreateBedProfiles < ActiveRecord::Migration
  def change
    create_table :bed_profiles do |t|

      t.string :name, null: false, default: "unknow", unique: true
      t.integer :capacity, null: false, default: 1
      t.integer :length, null: false, default: 1880
      t.integer :width, null: false, default: 915

      t.timestamps null: false
    end
  end
end
