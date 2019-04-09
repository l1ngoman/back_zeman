class RemoveItemsFromVendorLocations < ActiveRecord::Migration[5.2]
  def change
    remove_column :vendor_locations, :address_1, :string
    remove_column :vendor_locations, :address_2, :string
    remove_column :vendor_locations, :zip, :string
  end
end
