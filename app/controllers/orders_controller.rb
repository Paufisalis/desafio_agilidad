class OrdersController < ApplicationController
before_action :authenticate_user!
  def create
    product = Product.find(params[:product_id])
    order = Order.create(user: current_user, product: product)
    redirect_to products_path, notice: 'Producto agregado correctamente'
  end
end
