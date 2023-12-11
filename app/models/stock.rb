# frozen_string_literal: true

class Stock < ApplicationRecord
  has_many :preorder_items
  has_many :preorders, through: :preorder_items
  has_many :stock_details
  has_many :restock_details

  validates :name, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :unit_price, presence: true, numericality: { greater_than: 0 }
end
