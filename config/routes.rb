Rails.application.routes.draw do
  devise_for :users
  root "home#show"

  resources :menu_items, only: [:index]
  resources :order_items, only: [:new, :create]
  resources :orders, only: [:show]
  resources :charges, only: [:new, :create]
end
