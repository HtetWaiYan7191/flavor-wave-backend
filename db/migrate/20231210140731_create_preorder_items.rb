# frozen_string_literal: true

class CreatePreorderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :preorder_items do |t|
      t.references :preorder, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
