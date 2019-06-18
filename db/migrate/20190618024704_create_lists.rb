class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :product
      t.date :quantity
      t.boolean :bought

      t.timestamps null: false
    end
  end
end
