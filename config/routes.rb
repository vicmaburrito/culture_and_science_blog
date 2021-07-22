Rails.application.routes.draw do
  #resources :votes
  resources :users
  resources :articles, only: [:new, :create, :index]
  resources :articles do
    resources :votes, only: [:create, :destroy]
      end
  resources :sessions, only: %w[index create destroy]
  delete "/sessions", to: 'sessions#destroy' 
  resources :categories
  root to: 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
