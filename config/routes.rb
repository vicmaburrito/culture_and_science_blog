Rails.application.routes.draw do
  resources :users
  resources :articles, only: [:new, :create, :index]
  resources :articles do
    resources :votes
      end
  resources :sessions, only: %w[index create destroy]
  delete "/sessions", to: 'sessions#destroy' 
  resources :categories
  root to: 'articles#index'
  get "/dialogflow/show", to: 'dialogflow#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
