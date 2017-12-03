Rails.application.routes.draw do
  root to: "home#index"

  resources :price_btcs, only: [:show, :index]
end
