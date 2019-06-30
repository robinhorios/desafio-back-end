Rails.application.routes.draw do
  devise_for :users

  resources :operations, only: [:index, :show, :new, :create]
  resources :stores, only: [:index]
  
  root to: 'home#index'
end
