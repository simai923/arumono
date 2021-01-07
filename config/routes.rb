Rails.application.routes.draw do
  root to: "introductions#index"
  resources :introductions, only: [:index]
  resources :foods, only: [:index, :new, :create, :edit, :update] do
    collection do
      get 'success'
    end
  end
end
