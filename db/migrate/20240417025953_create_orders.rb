class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :fee
      t.decimal :discount
      t.decimal :total

      t.timestamps
    end
  end
end
