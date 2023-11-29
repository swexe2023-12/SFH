Rails.application.routes.draw do
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :users
  resources :comments
  resources :likes, only: [:create, :destroy]
  resources :stocks, only: [:index, :new]
  
  root 'top#login'
  
  #get 'users/index'
  #get 'users/new'
  #get 'users/create'
  #get 'users/destroy'
  #get 'stock/index'
  #get 'stock/new'
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
