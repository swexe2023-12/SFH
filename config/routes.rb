Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  get 'stocks/index'
  post 'stocks/new'
  get 'stocks/show'
  post 'stocks/create'
  resources :users
  resources :comments
  resources :likes, only: [:create, :destroy]
  resources :stocks
  
  root 'top#login'
  
  #get 'users/index'
  #get 'users/new'
  #get 'users/create'
  #get 'users/destroy'
  #get 'stock/create'
  #get 'stock/destroy'
  #get 'comment/index'
  #get 'comment/new'
  #get 'comment/create'
  #get 'comment/destroy'
  #get 'like/create'
  #get 'like/destroy'
  #get 'top/main'
  #get 'top/login'
  #get 'top/logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
