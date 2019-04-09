class CreateVendorLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :vendor_locations do |t|
      t.references :vendor, foreign_key: true
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
