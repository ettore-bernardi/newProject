class Order < ApplicationRecord
  belongs_to :user

  has_many :items, inverse_of: :order
    accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true
end
