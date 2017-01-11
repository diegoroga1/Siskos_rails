class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :password
      t.string :address
      t.timestamps
    end
  end
end
