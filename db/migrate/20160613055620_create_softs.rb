class CreateSofts < ActiveRecord::Migration
  def change
    create_table :softs do |t|
      t.string :name
      t.integer :price
      t.string :maker
      t.string :hard

      t.timestamps null: false
    end
  end
end
