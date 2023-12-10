# frozen_string_literal: true

class Delivery < ApplicationRecord
  belongs_to :preorder
  belongs_to :truck

  validates :region, presence: true, type: :string, allow_blank: false
  validates :delivery_date, presence: true, allow_blank: false
end
