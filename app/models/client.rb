# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :preorders

  validates :name, presence: true
  validates :region, presence: true,
  validates :phone, presence: true, type: :string
  validates :address, presence: true, 
end
