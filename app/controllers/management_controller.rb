class ManagementController < ApplicationController
  def index
    @orders = Order.all
  end
end
