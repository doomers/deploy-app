class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name
      t.boolean :sold
      t.float :length
      t.float :width
      t.float :weight
      t.time :selling_time
      t.time :buying_time
      t.bigint :quantity
      t.integer :selling_price
      t.integer :buying_price

      t.timestamps
    end
  end
end
