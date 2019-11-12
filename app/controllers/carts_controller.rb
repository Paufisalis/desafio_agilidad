class CartsController < ApplicationController
  before_action :authenticate_user!
  def index
    @unpayed_user_orders = Order.where(user: current_user, payed: nil)
    @total = Order.total(current_user)
  end
end
