Rails.application.routes.draw do
  root "home#show"

  resources :menu_items, only: [:index]
  resources :order_items, only: [:new, :index, :create]
end
