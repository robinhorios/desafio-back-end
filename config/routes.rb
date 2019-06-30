Rails.application.routes.draw do
  devise_for :users

  resources :cnabs, only: [:index, :show, :new, :create]
  
  root to: 'home#index'
end
