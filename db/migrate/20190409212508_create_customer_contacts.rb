class CreateCustomerContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_contacts do |t|
      t.references :customer, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :phone
      t.string :email
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
