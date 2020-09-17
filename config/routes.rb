Rails.application.routes.draw do
  
  resources :events
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create, :destroy]

  root 'events#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login',  to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :current_events, only: [:new, :create]

end
