class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.references :item, foreign_key: true
      t.float :tier_1
      t.float :tier_2
      t.float :tier_3
      t.float :tier_4
      t.float :zeman
      t.float :map
      t.float :msrp
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
