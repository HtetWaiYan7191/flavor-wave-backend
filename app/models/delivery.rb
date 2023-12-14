# frozen_string_literal: true

class Delivery < ApplicationRecord
  belongs_to :preorder
  belongs_to :truck

  validates :delivery_date, presence: true, allow_blank: false
  after_initialize :set_default_date

  private

  def set_default_date
    update(delivery_date: (Time.zone.now + 3.days).strftime('%d/%m/%Y'))
  end
end
