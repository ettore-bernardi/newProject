# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates_presence_of :product_id
end
