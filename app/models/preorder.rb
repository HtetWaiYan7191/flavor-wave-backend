# frozen_string_literal: true

class Preorder < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :preorder_items
  has_many :stocks, through: :preorder_items
  has_many :deliveries

  validates :quantity, presence: { message: 'must be present and greater than 0' }, numericality: { only_integer: true, greater_than: 0, message: 'must be an integer greater than 0' }
  validates :order_date, presence: { message: 'must be present' }
  validates :order_status, presence: { message: 'must be present' }
  validates :total, presence: { message: 'must be present and greater than 0' }, numericality: { greater_than: 0, message: 'must be greater than 0' }

  after_initialize :set_default_values

  private

  def set_default_values
    set_urgent_default
    set_permission_default
    set_order_status_default unless order_status.present?
  end

  def set_urgent_default
    update(urgent: client&.region == 'Yangon')
  end

  def set_permission_default
    self.permission ||= false
  end

  def set_order_status_default
    self.order_status ||= 'Pending'
  end
end
