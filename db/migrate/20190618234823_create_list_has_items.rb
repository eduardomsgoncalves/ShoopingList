class CreateListHasItems < ActiveRecord::Migration
  def change
    create_table :list_has_items do |t|
      t.integer :quantity
      t.boolean :bought
      t.references :list, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
