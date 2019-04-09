class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :vendor, foreign_key: true
      t.string :part_no
      t.string :name
      t.string :description
      t.text :notes
      t.boolean :active

      t.timestamps
    end
  end
end
