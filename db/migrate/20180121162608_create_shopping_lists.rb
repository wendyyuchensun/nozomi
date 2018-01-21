class CreateShoppingLists < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_lists do |t|
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end