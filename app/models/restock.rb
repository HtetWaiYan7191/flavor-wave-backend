# frozen_string_literal: true

class Restock < ApplicationRecord
  has_many :restock_details, dependent: :destroy
  has_many :stock_details, dependent: :destroy

  validates :restock_date, presence: true
end
