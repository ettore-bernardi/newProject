class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]

  def index
    if current_user.admin?
      @orders = Order.all
    else
      @orders = current_user.orders
    end
  end

  def history
    
  end
  

  def show
  end

  def new
    @order = current_user.orders.build
    @order.items.build
  end

  def edit
  end

  def create
    @order = current_user.orders.build(order_params)
    @order.order_date = Time.now
    @order.total = @order.set_total
    respond_to do |format|
      if @order.save
        
        format.html { redirect_to edit_order_path(@order), notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      @order.total = @order.set_total
      if @order.update(order_params)
        format.html { redirect_to edit_order_path(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      if current_user.admin?
        @order = Order.find(params[:id])
      else
        @order = current_user.orders.find(params[:id])
      end
    end


    def order_params
      params.require(:order).permit(:done, items_attributes:[:id, :product_id, :quantity, :_destroy])
    end
end
