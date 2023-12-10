# frozen_string_literal: true

class StockDetail < ApplicationRecord
  belongs_to :restock
  belongs_to :stock

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :expiry_date, presence: true
end
