# frozen_string_literal: true

class PreorderItem < ApplicationRecord
  belongs_to :preorder
  belongs_to :stock

  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
