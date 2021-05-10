Rails.application.routes.draw do
  namespace :admin do
    root 'application#index'
  end
  devise_for :users
	root 'events#index'
	resources :users, only: [:show]
	resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
