class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.references :plan, foreign_key: true
      t.references :appliance, foreign_key: true
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
