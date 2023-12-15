# frozen_string_literal: true

class Delivery < ApplicationRecord
  belongs_to :preorder
  belongs_to :truck

  validates :delivery_date, presence: true, allow_blank: false
  validate :check_truck_capacity

  private 
  
  def check_truck_capacity
    if truck.current_capacity <= preorder.quantity
      errors.add(:truck, "capacity exceeded")
    end 
  end
end
