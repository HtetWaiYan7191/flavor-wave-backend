# frozen_string_literal: true

class Preorder < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :preorder_items
  has_many :stocks, through: :preorder_items

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :order_date, presence: true
  validates :order_status, presence: true
  validates :total, presence: true, numericality: { greater_than: 0 }

  # enum order_status: %i[pending delivering approve]

  after_initialize do
    set_urgent_default
    set_permission_default
    set_order_status_default
  end

  private

  def set_urgent_default
    self.urgent ||= false
  end

  def set_permission_default
    self.permission ||= false
  end

  def set_order_status_default
    self.order_status ||= '0'
  end
end
