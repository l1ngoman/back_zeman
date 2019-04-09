class RemoveLocationFromVendor < ActiveRecord::Migration[5.2]
  def change
    remove_column :vendors, :city, :string
    remove_column :vendors, :state, :string
    remove_column :vendors, :country, :string
  end
end
