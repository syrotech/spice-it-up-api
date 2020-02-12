class AddSubstitutionToSpice < ActiveRecord::Migration[5.2]
  def change
    add_column :spices, :substitution, :string
  end
end
