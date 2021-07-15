Rails.application.routes.draw do
  resources :users, only: %i[new create edit update]
  resources :articles, only: [:new, :create, :index]
  resources :articles
  resources :sessions, only: %w[index create destroy]
  delete "/sessions", to: 'sessions#destroy' 
  root to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
