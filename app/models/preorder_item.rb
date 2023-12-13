# frozen_string_literal: true

class PreorderItem < ApplicationRecord
  belongs_to :preorder
  belongs_to :stock

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
end
