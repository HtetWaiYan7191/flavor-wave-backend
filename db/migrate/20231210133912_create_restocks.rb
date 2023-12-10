# frozen_string_literal: true

class CreateRestocks < ActiveRecord::Migration[7.0]
  def change
    create_table :restocks, &:timestamps
  end
end
