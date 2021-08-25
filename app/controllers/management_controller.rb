class ManagementController < ApplicationController
  def index
    if current_user.admin?
      @orders = Order.all
    else
      @orders = current_user.orders
    end
  end
end
