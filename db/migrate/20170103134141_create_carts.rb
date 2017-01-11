class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.decimal :total_prize
      t.integer :total_amount
      t.timestamps
    end
  end
end
