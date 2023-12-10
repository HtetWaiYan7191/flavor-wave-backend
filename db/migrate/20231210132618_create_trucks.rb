# frozen_string_literal: true

class CreateTrucks < ActiveRecord::Migration[7.0]
  def change
    create_table :trucks do |t|
      t.string :license
      t.string :driver
      t.integer :capacity
      t.boolean :available

      t.timestamps
    end
  end
end
