class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.decimal :price
      t.integer :stock
      t.string :image
      t.text :description
      t.string :barcode

      t.timestamps
    end
  end
end
