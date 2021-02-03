Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :accounts
  resources :users
  root 'homepage#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users


end
