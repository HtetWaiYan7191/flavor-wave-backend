# frozen_string_literal: true

class Delivery < ApplicationRecord
  belongs_to :preorder
  belongs_to :truck

  validates :delivery_date, presence: true, allow_blank: false
end
