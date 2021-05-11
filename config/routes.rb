Rails.application.routes.draw do
  resources :courses
  namespace :admin do
    root 'application#index'
    resources :users, only: [:index]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  devise_for :users
	root 'events#index'
	resources :users, only: [:show]
	resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
