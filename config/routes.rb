Rails.application.routes.draw do
  devise_for :users
  root "home#show"

  resources :menu_items, only: [:index]
  resources :order_items, except: [:index, :show]
  resources :orders, only: [:show, :index, :update]
  resources :charges, only: [:new, :create]

end
