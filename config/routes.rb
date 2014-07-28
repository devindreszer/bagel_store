Rails.application.routes.draw do
  root "home#show"

  resources :menu_items, only: [:index]
end
