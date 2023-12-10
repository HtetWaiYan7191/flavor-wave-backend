# frozen_string_literal: true

class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.references :preorder, null: false, foreign_key: true
      t.references :truck, null: false, foreign_key: true
      t.bigint :distance
      t.string :delivery_date

      t.timestamps
    end
  end
end
