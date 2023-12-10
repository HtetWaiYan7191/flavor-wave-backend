# frozen_string_literal: true

class StockDetail < ApplicationRecord
  belongs_to :restock
  belongs_to :stock
end
