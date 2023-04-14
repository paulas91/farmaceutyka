class RenameColumnType < ActiveRecord::Migration[7.0]
  def change
    rename_column :syrups, :type, :name
  end
end
