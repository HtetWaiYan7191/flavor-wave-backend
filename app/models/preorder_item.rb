# frozen_string_literal: true

class PreorderItem < ApplicationRecord
  belongs_to :preorder
  belongs_to :stock

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validate :unique_preorder_item_except_same_stock_different_id

  # after_create :reduce_stock

  private

  def unique_preorder_item_except_same_stock_different_id
    existing_item = PreorderItem.find_by(preorder_id: preorder_id, stock_id: stock_id)

    if existing_item && existing_item.id != id
      errors.add(:base, "Preorder already has this stock item with different ID")
    end
  end

  # def reduce_stock
  #     stock = Stock.find(self.stock_id)
  #     stock.quantity -= item.quantity
  #     stock.save
  # end

end
