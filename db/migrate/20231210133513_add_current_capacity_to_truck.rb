# frozen_string_literal: true

class AddCurrentCapacityToTruck < ActiveRecord::Migration[7.0]
  def change
    add_column :trucks, :current_capacity, :integer
  end
end
