# frozen_string_literal: true

class RenameColumnTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :syrups, :time, :dose_time
  end
end
