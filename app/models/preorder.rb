# frozen_string_literal: true

class Preorder < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :stocks, through: :preorder_items
end
