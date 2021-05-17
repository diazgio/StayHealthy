Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: 'confirmations'
  }
  resources :dashboard, only: [:index]
  resources :home, only: [:index]
  root "home#index"
end
