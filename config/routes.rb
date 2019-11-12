Rails.application.routes.draw do
  get 'products', to: 'products#index'
  post 'orders/:product_id', to: 'orders#create',as:'orders'
  get 'cart', to: 'carts#index', as: 'cart'
  devise_for :users

# resources :products, only: :index do
#   resources :orders, only: :create
# end ejemplo de ruta anidada



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"
end
