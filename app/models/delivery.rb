# frozen_string_literal: true

class Delivery < ApplicationRecord
  belongs_to :preorder
  belongs_to :truck

  validates :delivery_date, presence: true, allow_blank: false
  validate :check_truck_capacity

  after_initialize :set_default_date
  after_initialize :reduce_truck_capacity, unless: -> { truck.nil? || !truck.available? }

  private

  def reduce_truck_capacity
    truck.update(current_capacity: truck.current_capacity - preorder.quantity)
  end

  def check_truck_capacity
    errors.add(:truck, 'capacity exceeded') if truck&.current_capacity.to_i <= preorder.quantity
  end

  def set_default_date
    update(delivery_date: (Time.zone.now + 3.days).strftime('%d/%m/%Y'))
  end
end
