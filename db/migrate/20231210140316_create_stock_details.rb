# frozen_string_literal: true

class CreateStockDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :stock_details do |t|
      t.references :restock, null: false, foreign_key: true
      t.integer :quantity
      t.string :expiry_date
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
