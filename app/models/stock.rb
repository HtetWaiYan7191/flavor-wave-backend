# frozen_string_literal: true

class Stock < ApplicationRecord
  has_many :preorders, through: :preorder_items
  has_many :stock_details

  validates :name, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
