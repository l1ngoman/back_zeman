class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.string :item_name
      t.string :part_no
      t.string :ship_from
      t.datetime :ship_date
      t.float :cost
      t.string :confirmation
      t.string :status

      t.timestamps
    end
  end
end
