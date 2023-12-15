# frozen_string_literal: true

class Truck < ApplicationRecord
  has_many :deliveries, dependent: :destroy

  validates :license, presence: true
  validates :driver, presence: true, length: { maximum: 15 }
  validates :capacity, presence: true
  validates :available, inclusion: { in: [true, false] }
  validates :current_capacity, presence: true, numericality: { only_integer: true }

  after_initialize do
    set_current_capacity
  end  

  def set_availabe_false
    current_capacity < capacity*0.2 ? update(available: false) : update(available: true)
    # self.available = false if current_capacity < capacity*0.2
  end

  private

  def set_current_capacity
    self.current_capacity ||= capacity
  end
end
