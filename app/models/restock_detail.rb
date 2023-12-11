# frozen_string_literal: true

class RestockDetail < ApplicationRecord
  belongs_to :restock

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :expiry_date, presence: true
end
