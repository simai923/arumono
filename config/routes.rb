Rails.application.routes.draw do
  root to: "introductions#index"
  resources :introductions, only: [:index]
  resources :foods, only: [:index]
end
