Rails.application.routes.draw do
	root to: 'operations#index'

  devise_for :users

  resources :operations, only: [:index, :show, :new, :create]
  resources :stores, only: [:index]
end