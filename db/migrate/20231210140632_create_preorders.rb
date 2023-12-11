# frozen_string_literal: true

class CreatePreorders < ActiveRecord::Migration[7.0]
  def change
    create_table :preorders do |t|
      t.references :client, null: false, foreign_key: true
      t.integer :quantity
      t.string :order_date
      t.string :order_status
      t.bigint :total
      t.boolean :permission
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
