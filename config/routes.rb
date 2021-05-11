Rails.application.routes.draw do
  resources :courses
  namespace :admin do
    root 'application#index'
    resources :users, only: [:index]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  devise_for :users

  resources :users, only: [:show]
  resources :categories, only: [:show]
  root 'events#index'

  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
