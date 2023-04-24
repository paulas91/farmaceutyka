class AddUniqueIndexToSyrups < ActiveRecord::Migration[7.0]
  def change
    add_index :syrups, :name, unique: true
  end
end
