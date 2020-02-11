class AddImageurlToSpice < ActiveRecord::Migration[5.2]
  def change
    add_column :spices, :imageurl, :string
  end
end
