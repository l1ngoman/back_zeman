class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :customer_account, foreign_key: true
      t.string :method
      t.string :bill_to
      t.string :ship_to
      t.string :vendor_contact
      t.string :order_taken_username
      t.datetime :order_taken_timestamp
      t.string :order_placed_username
      t.string :order_placed_timestamp
      t.string :status

      t.timestamps
    end
  end
end
