class AddPrimaryToVendorLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :vendor_locations, :primary, :boolean
  end
end
