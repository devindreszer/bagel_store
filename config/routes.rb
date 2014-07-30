Rails.application.routes.draw do
  devise_for :users
  root "home#show"

  resources :menu_items, only: [:index]
  resources :order_items, only: [:new, :create, :destroy]
  resources :orders, only: [:show, :index]
  resources :charges, only: [:new, :create]
  resources :neighborhoods, only: [:new, :create]

end
