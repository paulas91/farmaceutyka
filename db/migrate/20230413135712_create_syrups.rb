class CreateSyrups < ActiveRecord::Migration[7.0]
  def change
    create_table :syrups do |t|
      t.string :type
      t.datetime :time

      t.timestamps
    end
  end
end
