# frozen_string_literal: true

class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :region
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end