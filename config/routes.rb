Rails.application.routes.draw do
  root to: "introductions#index"
  resources :introductions, only: [:index] do
    collection do
      get 'how_to', 'detail'
    end
  end
  resources :foods, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      get 'success'
    end
  end
end
