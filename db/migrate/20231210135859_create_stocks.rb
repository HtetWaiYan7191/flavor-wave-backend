# frozen_string_literal: true

class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :quantity
      t.bigint :unit_price

      t.timestamps
    end
  end
end
