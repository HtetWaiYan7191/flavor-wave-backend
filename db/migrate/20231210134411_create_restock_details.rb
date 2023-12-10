# frozen_string_literal: true

class CreateRestockDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :restock_details do |t|
      t.string :name
      t.integer :quantity
      t.string :expiry_date
      t.references :restock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
