Rails.application.routes.draw do
  resources :users
  resources :links
  resources :sessions, only: [:new, :create, :destroy]  
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'signin', to: 'sessions#new', as: 'signin'
  get 'edit', to: 'users#edit', as: 'edit'
  get 'signout', to: 'sessions#destroy', as: 'signout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'links#index'
end
