class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
