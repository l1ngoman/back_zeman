class CreateCustomerAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_accounts do |t|
      t.references :customer, foreign_key: true
      t.references :vendor, foreign_key: true
      t.integer :account_number
      t.string :terms
      t.string :price_level
      t.string :freight_terms
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
