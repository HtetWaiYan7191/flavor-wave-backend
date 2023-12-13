# frozen_string_literal: true

class PreorderItem < ApplicationRecord
  belongs_to :preorder
  belongs_to :stock

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :unique_preorder_item_except_same_stock_different_id
  validate :check_stock_quantity

  after_create :reduce_stock, if: -> { stock.quantity >= preorder.quantity }

  private

  def unique_preorder_item_except_same_stock_different_id
    existing_item = PreorderItem.find_by(preorder_id: preorder_id, stock_id: stock_id)

    if existing_item && existing_item.id != id
      errors.add(:base, "Preorder already has this stock item with different ID")
    end
  end

  def check_stock_quantity
    current_preorder_item = PreorderItem.find_by(stock_id: stock_id, preorder_id: preorder_id)
  
    if current_preorder_item && stock.quantity < current_preorder_item.quantity
      errors.add(:base, "Stock quantity is insufficient for this Preorder")
    end
  end

  def reduce_stock
    stock = Stock.find(stock_id)
    stock_details = StockDetail.where(stock_id: stock_id).order(expiry_date: :desc)
    current_preorder_item = stock.preorder_items.find_by(preorder_id: preorder_id)
  
    if stock.quantity >= current_preorder_item.quantity
      stock.quantity -= current_preorder_item.quantity
      stock.save
      loop_and_delete(stock_details, current_preorder_item.quantity)
    else
      errors.add(:base, "Stock quantity is insufficient for this PreorderItem")
    end
  end

  def loop_and_delete(details, remain)
    details.each do |detail|
      if remain >= detail.quantity
        remain -= detail.quantity
        detail.destroy
      else
        detail.quantity -= remain
        detail.save
        break
      end
    end
  end

end
