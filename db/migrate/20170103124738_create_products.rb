class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :amount
      t.decimal :total_prize
      t.belongs_to :serigraphy
      t.belongs_to :shirt
      t.timestamps
    end
  end
end
