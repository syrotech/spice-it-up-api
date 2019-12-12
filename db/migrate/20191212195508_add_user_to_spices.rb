class AddUserToSpices < ActiveRecord::Migration[5.2]
  def change
    add_reference :spices, :user, foreign_key: true
  end
end
