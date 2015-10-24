class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string   :country
      t.float    :lat
      t.float    :long
      t.string   :wiki
      t.string   :dst
      t.timestamps null: false
    end
  end
end
