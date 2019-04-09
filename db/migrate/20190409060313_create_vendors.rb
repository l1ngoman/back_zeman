class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :phone
      t.string :website
      t.string :city
      t.string :state
      t.string :country
      t.string :hours
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
