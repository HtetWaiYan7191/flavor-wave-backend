# frozen_string_literal: true

class Truck < ApplicationRecord
  has_many :deliveries

  validates :license, presence: true
  validates :driver, presence: true, length: { maximum: 15 }, type: :string
  validates :capacity, presence: true
  validates :available, inclusion: { in: [true, false] }
end
