class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds do |t|
      t.belongs_to :bed_profiles, index: true, null: false
      t.belongs_to :rooms, index: true, null: false

      t.timestamps null: false
    end
  end
end
