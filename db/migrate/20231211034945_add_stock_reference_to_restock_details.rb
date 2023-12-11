# frozen_string_literal: true

class AddStockReferenceToRestockDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :restock_details, :stock, null: false, foreign_key: true
  end
end
