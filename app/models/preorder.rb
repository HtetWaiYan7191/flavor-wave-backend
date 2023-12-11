# frozen_string_literal: true

class Preorder < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :stocks, through: :preorder_items

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :date, presence: true
  validates :order_status, presence: true
  validates :total, presence: true, numericality: { greater_than: 0 }

  enum order_status: %i[pending delivering approve]

  after_initialize :set_permission_default

  private

  def set_permission_default
    self.permission ||= false
  end
end