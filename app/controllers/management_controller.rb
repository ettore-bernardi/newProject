# frozen_string_literal: true

class ManagementController < ApplicationController
  def index
    @orders = if current_user.admin?
                Order.all
              else
                current_user.orders
              end
  end
end
