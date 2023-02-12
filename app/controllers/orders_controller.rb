class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show update destroy ]

  # # GET /orders
  # def index
  #   @orders = Order.all

  #   render json: @orders
  # end

  # # GET /orders/1
  # def show
  #   render json: @order
  # end

  # POST /orders
  def create
    @order = Order.new(order_params)
    
    render Order.result
  end

  #  

  # # DELETE /orders/1
  # def destroy
  #   @order.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_order
  #     @order = Order.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def order_params
  #     params.require(:order).permit(:order)
  #   end
end
