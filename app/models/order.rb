class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :items, source: :format

  has_many :items, inverse_of: :order, dependent: :destroy
    accepts_nested_attributes_for :items, reject_if: :all_blank, allow_destroy: true


    def set_total
      @price = 0
      for @item in items
        @price += @item.product.price*@item.quantity
      end
      @price
    end
end
