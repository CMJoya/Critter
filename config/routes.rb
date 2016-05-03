Rails.application.routes.draw do

  root 'pages#index'

  get '/home' => 'pages#home'
  get '/user/:id' => 'pages#profile'
  get '/explore' => 'pages#explore'

  devise_for :users

  resources :posts
  # get 'posts' => 'posts#index', as: :posts
  # get 'posts/new' => 'posts#new', as: :new_post
  # get 'posts/:id' => 'posts#show', as: :post
  # get 'post/:id/edit' => 'posts#edit', as: :edit_post
  # post 'posts' => 'posts#create'
  # patch 'posts/:id' => 'posts#update'
  # put 'posts/:id' => 'posts#update'
  # delete 'posts/:id' => 'posts#delete'

end
