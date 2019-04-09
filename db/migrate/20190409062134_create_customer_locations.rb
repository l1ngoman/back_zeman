class CreateCustomerLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_locations do |t|
      t.references :customer, foreign_key: true
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.text :notes
      t.boolean :primary_billing
      t.boolean :primary_shipping
      t.boolean :active

      t.timestamps
    end
  end
end
