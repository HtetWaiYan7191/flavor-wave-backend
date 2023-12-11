# frozen_string_literal: true

class Truck < ApplicationRecord
  has_many :deliveries

  validates :license, presence: true
  validates :driver, presence: true, length: { maximum: 15 }
  validates :capacity, presence: true
  validates :available, inclusion: { in: [true, false] }

  after_initialize :set_available_default
  private 

  def set_available_default
    self.available ||= false
  end
end
