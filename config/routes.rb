Rails.application.routes.draw do
  get 'transactions/index'
  devise_for :users
  root to: "items#index"
  resources :items do
    resources :transactions, only: [:index, :new, :create]
  end
end

