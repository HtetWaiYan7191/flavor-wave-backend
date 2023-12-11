# frozen_string_literal: true

class Restock < ApplicationRecord
  has_many :restock_details
  has_many :stock_details

  validates :restock_date, presence: true
end
