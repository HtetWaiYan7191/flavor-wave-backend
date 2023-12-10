# frozen_string_literal: true

class PreorderItem < ApplicationRecord
  belongs_to :preorder
  belongs_to :stock
end
