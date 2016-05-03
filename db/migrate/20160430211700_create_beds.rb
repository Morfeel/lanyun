class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds do |t|

      t.string :name, null:false, default: 'unknown', unique: true
      t.belongs_to :bed_profile, index: true, null: false
      t.belongs_to :room, index: true

      t.timestamps null: false
    end
  end
end
