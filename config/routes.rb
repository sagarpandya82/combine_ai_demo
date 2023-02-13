Rails.application.routes.draw do
  resources :mini_posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'user/:id', to: 'users#show'
  post 'follow', to: 'users#follow'
  post 'unfollow', to: 'users#unfollow'
  # Defines the root path route ("/")

  post 'like', to: 'likes#create'
  post 'dislike', to: 'likes#destroy'

  root "home#index"
end
