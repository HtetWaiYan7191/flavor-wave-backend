# frozen_string_literal: true

class Truck < ApplicationRecord
  has_many :deliveries, dependent: :destroy

  validates :license, presence: true
  validates :driver, presence: true, length: { maximum: 15 }
  validates :capacity, presence: true
  validates :available, inclusion: { in: [true, false] }
  validates :current_capacity, presence: true, numericality: { only_integer: true }

  after_initialize :set_default_values
  before_save :update_available_status

  def update_available_status
    self.available = current_capacity >= capacity * 0.2
  end

  private

  def set_default_values
    set_current_capacity
  end

  def set_current_capacity
    update(current_capacity: capacity) if current_capacity.nil?
  end

  def check_and_update_preorders
    return unless saved_change_to_available? && !available?

    deliveries.each do |delivery|
      delivery.preorder.update(permission: false)
    end
  end
end
