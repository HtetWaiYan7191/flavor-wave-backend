# frozen_string_literal: true

class Stock < ApplicationRecord
  has_many :preorder_items, dependent: :destroy
  has_many :preorders, through: :preorder_items
  has_many :stock_details, dependent: :destroy
  has_many :restock_details, dependent: :destroy

  validates :name, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :unit_price, presence: true, numericality: { greater_than: 0 }

  def to_json_with_sorted_stock_details
    self.as_json(
      include: { stock_details: { only: :expiry_date } },
      methods: :sorted_stock_details
    )
  end

  def sorted_stock_details
    stock_details
      .reject { |detail| parse_expiry_date(detail.expiry_date).nil? }
      .sort_by { |detail| parse_expiry_date(detail.expiry_date) }
  end
  
  private
  
  def parse_expiry_date(expiry_date)
    Date.parse(expiry_date) rescue nil
  end
end
