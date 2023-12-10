# frozen_string_literal: true

class Restock < ApplicationRecord
  has_many :restock_details
end
