class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone_1
      t.string :phone_2
      t.string :email
      t.text :notes

      t.timestamps
    end
  end
end
