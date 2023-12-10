# frozen_string_literal: true

class Stock < ApplicationRecord
  has_many :preorders, through: :preorder_items
  has_many :stock_details
end
