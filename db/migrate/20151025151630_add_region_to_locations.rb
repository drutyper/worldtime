class AddRegionToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :region,       :string
    add_column :locations, :region_link,  :string
    add_column :locations, :country_link, :string
  end
end
