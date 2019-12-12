class CreateSpices < ActiveRecord::Migration[5.2]
  def change
    create_table :spices do |t|
      t.string :name
      t.string :origin
      t.string :culinary_use
      t.string :weight
      t.string :price

      t.timestamps
    end
  end
end
